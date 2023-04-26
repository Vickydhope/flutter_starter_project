import 'dart:convert';


/*import 'package:flutter_starter_project/model/zip_code_details.dart';

import '../../model/model.dart';*/

extension ResponseParser on String {
  List<T> parseList<T>() {
    fromResponseToModel(e) {
      switch (T) {
/*        case Categories:
          return Categories.fromJson(e);*/

        default:
          return UnimplementedError(
              "You have not implemented casting of this class please implement it first.");
      }
    }

    return (json.decode(this) as List)
        .map((e) => fromResponseToModel(e))
        .cast<T>()
        .toList();
  }
}
