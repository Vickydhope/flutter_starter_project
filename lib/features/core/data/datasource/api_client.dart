import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_starter_project/config/flavor_config.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/app_exceptions.dart';
import 'base_api_services.dart';
import 'interceptors/logging.dart';

@Singleton(as: BaseApiServices)
class ApiClient extends BaseApiServices {
  final Dio _dio = Dio(
    BaseOptions(
        baseUrl: FlavorConfig.instance.values.baseUrlNewsEndpoint,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        headers: {
          HttpHeaders.contentTypeHeader: formUrlEncodedContentType,
        }),
  )..interceptors.add(LogInterceptor(
      error: true,
      responseBody: kDebugMode,
      request: false,
      requestHeader: false));

  // Header field value
  static const jsonContentType = 'application/json';
  static const formUrlEncodedContentType = 'application/x-www-form-urlencoded';
  static const textPlainContentType = 'text/plain';
  static const multipartFormDataContentType = 'multipart/form-data';

  @override
  Future callGetApi(String uri) async {
    dynamic responseJson;

    try {
      Response response = await _dio.get(uri);
      responseJson = returnResponse(response);
    } on DioError catch (e) {
      if (e.response != null) {
        if (kDebugMode) {
          print('Dio error!');
          print('STATUS: ${e.response?.statusCode}');
          print('DATA: ${e.response?.data}');
          print('HEADERS: ${e.response?.headers}');
        }

        rethrow;
      } else {
        // Error due to setting up or sending the request
        if (kDebugMode) {
          print('Error sending request!');
          print("Dio Error $e");
        }

        throw NoInternetException();
      }
    }
    return responseJson;
  }

  @override
  Future callPostApi(String uri, Object data,
      {CancelToken? cancelToken}) async {
    dynamic responseJson;

    try {
      Response response =
          await _dio.post(uri, data: data, cancelToken: cancelToken);

      responseJson = returnResponse(response);
    } on DioError catch (e) {
      if (e.response != null) {
        if (kDebugMode) {
          print('Dio error!');
          print('STATUS: ${e.response?.statusCode}');
          print('DATA: ${e.response?.data}');
          print('HEADERS: ${e.response?.headers}');
        }
        throw ServerErrorException();
      } else {
        // Error due to setting up or sending the request
        if (kDebugMode) {
          print('Error sending request!');
          print("Dio Error : $e");
        }

        if (e.error == "cancelled") throw UserCancelledException();
        throw NoInternetException();
      }
    }
    return responseJson;
  }

  @override
  Future callJsonRequest(String uri, Object data) async {
    dynamic responseJson;

    try {
      Dio dio = Dio(
        BaseOptions(
            connectTimeout: const Duration(seconds: 30),
            receiveTimeout: const Duration(seconds: 30),
            headers: {
              HttpHeaders.contentTypeHeader: jsonContentType,
            }),
      )..interceptors.add(Logging());
      Response response = await dio.post(uri, data: data);

      if (response.statusCode == 200) {
        return getPrettyJSONString(response.data);
      }
      responseJson = returnResponse(response);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
        throw ServerErrorException();
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print("Dio Error$e");

        throw NoInternetException();
      }
    }
    return responseJson;
  }

  @override
  Future callUploadFileRequest(
      String uri, Map<String, dynamic> data, Map<String, File> file) async {
    Map<String, MultipartFile> fileMap = {};

    for (MapEntry fileEntry in file.entries) {
      File file = fileEntry.value;
      String fileName = _getBaseName(file.path);
      fileMap[fileEntry.key] = MultipartFile(
          file.openRead(), await file.length(),
          filename: fileName);
    }

    data.addAll(fileMap);
    var formData = FormData.fromMap(data);

    dynamic responseJson;

    try {
      Dio dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      )..interceptors.add(Logging());
      Response response = await dio.post(uri,
          data: formData, options: Options(contentType: "multipart/form-data"));

      if (response.statusCode == 200) {
        return getPrettyJSONString(response.data);
      }
      responseJson = returnResponse(response);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
        throw ServerErrorException();
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print("Dio Error$e");

        throw NoInternetException();
      }
    }
    return responseJson;
  }

  String _getBaseName(String path) {
    return path.split("/").last;
  }

  @override
  Future callDownloadFileRequest(String fileUrl, String storagePath) async {
    print(storagePath);
    try {
      Dio dio = Dio()..interceptors.add(Logging());
      Response response = await dio.get(
        fileUrl,
        onReceiveProgress: showDownloadProgress,
        //Received data with List<int>
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
      print(response.headers);
      File file = File(storagePath);
      var raf = file.openSync(mode: FileMode.write);
      // response.data is List<int> type
      raf.writeFromSync(response.data);
      await raf.close();
    } catch (e) {
      print(e);
    }
  }
}

void showDownloadProgress(received, total) {
  if (total != -1) {
    print((received / total * 100).toStringAsFixed(0) + "%");
  }
}

dynamic returnResponse(Response response) {
  switch (response.statusCode) {
    case 200:
      return response.data;
    case 400:
      throw BadRequestException(response.data.toString());
    case 404:
      throw BadRequestException(response.data.toString());
    case 500:
      throw BadRequestException(response.data.toString());
    default:
      throw FetchDataException(
          "Error occurred while communicating with server with status code ${response.statusCode}");
  }
}

String getPrettyJSONString(jsonObject) {
  var encoder = const JsonEncoder.withIndent("     ");
  return encoder.convert(jsonObject);
}

class CustomException implements Exception {
  String? message;

  CustomException(this.message);
}
