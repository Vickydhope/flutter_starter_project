part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getUserMasterData({required String custId}) =
      GetUserMasterDataEvent;

  const factory HomeEvent.getCategories() = GetCategoriesEvent;
}
