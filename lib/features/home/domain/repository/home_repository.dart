import 'package:flutter_starter_project/features/home/data/model/user_details.dart';

import '../../../../core/response/api_response.dart';
import '../../data/model/category_response.dart';

abstract class HomeRepository {
  Future<ApiResponse<UserDetails>> getUserMasterData({
    required String userId,
    required String userType,
  });

  Future<ApiResponse<CategoryResponse>> getMealCategories();
}
