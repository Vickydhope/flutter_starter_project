import 'package:equatable/equatable.dart';
import 'package:flutter_starter_project/core/response/api_response.dart';
import 'package:flutter_starter_project/core/use_case/use_case.dart';
import 'package:flutter_starter_project/features/home/data/model/user_details.dart';
import 'package:flutter_starter_project/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@Named("userMasterDate")
@injectable
class GetUserMasterDataUseCase
    implements UseCase<ApiResponse<UserDetails>, ParamsGetUserMasterData> {
  final HomeRepository _homeRepository;

  GetUserMasterDataUseCase(this._homeRepository);

  @override
  Future<ApiResponse<UserDetails>> call(ParamsGetUserMasterData params) async {
    return _homeRepository.getUserMasterData(
        userId: params.userId, userType: params.userType);
  }
}

class ParamsGetUserMasterData extends Equatable {
  final String userId;
  final String userType;

  const ParamsGetUserMasterData({
    required this.userId,
    required this.userType,
  });

  @override
  List<Object?> get props => [userId, userType];
}
