import 'package:flutter/foundation.dart';
import 'package:flutter_starter_project/core/error/app_exceptions.dart';
import 'package:flutter_starter_project/core/response/api_response.dart';
import 'package:flutter_starter_project/core/response/response_to_list_parser.dart';
import 'package:flutter_starter_project/features/core/data/datasource/base_api_services.dart';
import 'package:flutter_starter_project/features/home/data/model/user_details.dart';
import 'package:flutter_starter_project/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

import '../model/category_response.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final BaseApiServices apiClient;

  HomeRepositoryImpl(this.apiClient);

  @override
  Future<ApiResponse<UserDetails>> getUserMasterData(
      {required String userId, required String userType}) async {
    try {
      var response = await apiClient.callGetApi("/categories.php");

      var rawList = response.toString().parseList<UserDetails>();

      if (rawList.isNotEmpty) {
        return ApiResponse.completed(rawList.first);
      }

      return ApiResponse.error("Invalid login credentials");
    } catch (error) {
      if (error is AppException) {
        return ApiResponse.error(error.message);
      } else {
        if (error is FormatException) {
          if (kDebugMode) print(error);
          return ApiResponse.error("Format Exception");
        }

        return ApiResponse.error("Server Exception");
      }
    }
  }

  @override
  Future<ApiResponse<CategoryResponse>> getMealCategories() async {
    try {
      var response = await apiClient.callGetApi("/categories.php");

      return ApiResponse.completed(CategoryResponse.fromJson(response));

      return ApiResponse.error("Invalid login credentials");
    } catch (error) {
      if (error is AppException) {
        return ApiResponse.error(error.message);
      } else {
        if (error is FormatException) {
          if (kDebugMode) print(error);
          return ApiResponse.error("Format Exception");
        }

        return ApiResponse.error("Server Exception");
      }
    }
  }
}
