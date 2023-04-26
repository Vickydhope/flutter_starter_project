import 'dart:io';

// import 'package:image_picker/image_picker.dart';

abstract class BaseApiServices {
  Future<dynamic> callGetApi(String url);

  Future<dynamic> callPostApi(String uri, Map data);

  Future<dynamic> callJsonRequest(String uri, Map data);

  Future<dynamic> callDownloadFileRequest(String fileUrl, String storagePath);



// Future<dynamic> callUploadFileRequest(String uri, Map<String,dynamic> data,Map<String, File> file);
}
