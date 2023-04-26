import 'package:equatable/equatable.dart';
import 'package:flutter_starter_project/core/response/api_response.dart';
import 'package:flutter_starter_project/core/use_case/use_case.dart';
import 'package:flutter_starter_project/features/home/data/model/user_details.dart';
import 'package:flutter_starter_project/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/category_response.dart';

@injectable
class GetMealCategories
    implements UseCase<ApiResponse<CategoryResponse>, NoParams> {
  final HomeRepository _homeRepository;

  GetMealCategories(this._homeRepository);

  @override
  Future<ApiResponse<CategoryResponse>> call(params) {
    return _homeRepository.getMealCategories();
  }
}
