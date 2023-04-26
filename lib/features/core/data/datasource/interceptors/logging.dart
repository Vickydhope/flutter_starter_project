import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class Logging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    printInDebugOnly("******************Request********************");
    printInDebugOnly("Url : ${options.path}");
    printInDebugOnly("Method : ${options.method}");
    printInDebugOnly("Headers : ${options.headers}");
    printInDebugOnly("Data : ${options.data}");
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    printInDebugOnly("******************Response********************");
    printInDebugOnly("Url : ${response.requestOptions.path}");
    printInDebugOnly("Status Code : ${response.statusCode}");
    try{
      printInDebugOnly("Data : ${prettyJson(jsonDecode(response.data))}");

    }catch (e) {
      printInDebugOnly("Data : ${prettyJson(response.data)}");
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    printInDebugOnly("******************OnError********************");
    printInDebugOnly('Url : ${err.requestOptions.path}');
    printInDebugOnly('Status Code: ${err.response?.statusCode}');
    printInDebugOnly('Error : ${err.error}');
    printInDebugOnly('ErrorMessage : ${err.message}');
    printInDebugOnly('Stacktrace : ${err.stackTrace}');
    return super.onError(err, handler);
  }

  String prettyJson(dynamic json) {
    var spaces = ' ' * 4;
    var encoder = JsonEncoder.withIndent(spaces);
    return encoder.convert(json);
  }
}

void printInDebugOnly(dynamic object) {
  if (kDebugMode) log(object);
}
