import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_project/core/network/network_info.dart';
import 'package:flutter_starter_project/core/response/api_response.dart';
import 'package:flutter_starter_project/core/use_case/use_case.dart';
import 'package:flutter_starter_project/features/home/data/model/category_response.dart';
import 'package:flutter_starter_project/features/home/data/model/user_details.dart';
import 'package:flutter_starter_project/features/home/domain/repository/home_repository.dart';
import 'package:flutter_starter_project/features/home/domain/use_case/get_meal_categories.dart';
import 'package:flutter_starter_project/features/home/domain/use_case/get_user_master_data_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUserMasterDataUseCase _getUserMasterDataUseCase;
  final GetMealCategories _getMealCategories;

  HomeBloc(@Named('userMasterDate') this._getUserMasterDataUseCase,
      this._getMealCategories)
      : super(HomeState(
          apiResponse: ApiResponse.initial(),
          categoriesResponse: ApiResponse.initial(),
        )) {
    on<GetCategoriesEvent>((event, emit) async {
      emit(state.copyWith(categoriesResponse: ApiResponse.loading()));
      var response = await _getMealCategories.call(NoParams());
      emit(state.copyWith(categoriesResponse: response));
    });
  }
}
