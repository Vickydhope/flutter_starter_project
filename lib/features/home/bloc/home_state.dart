part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required ApiResponse<UserDetails> apiResponse,
    required ApiResponse<CategoryResponse> categoriesResponse,
  }) = _HomeState;
}
