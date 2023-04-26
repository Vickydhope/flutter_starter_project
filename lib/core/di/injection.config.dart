// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/core/data/datasource/api_client.dart' as _i4;
import '../../features/core/data/datasource/base_api_services.dart' as _i3;
import '../../features/home/bloc/home_bloc.dart' as _i11;
import '../../features/home/data/repository/home_repository_impl.dart' as _i7;
import '../../features/home/domain/repository/home_repository.dart' as _i6;
import '../../features/home/domain/use_case/get_meal_categories.dart' as _i9;
import '../../features/home/domain/use_case/get_user_master_data_use_case.dart'
    as _i10;
import '../network/network_info.dart' as _i8;
import 'app_module.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i3.BaseApiServices>(_i4.ApiClient());
    gh.factory<_i5.Connectivity>(() => appModule.connectivity);
    gh.factory<_i6.HomeRepository>(
        () => _i7.HomeRepositoryImpl(gh<_i3.BaseApiServices>()));
    gh.singleton<_i8.NetworkInfo>(_i8.NetworkInfoImpl(gh<_i5.Connectivity>()));
    gh.factory<_i9.GetMealCategories>(
        () => _i9.GetMealCategories(gh<_i6.HomeRepository>()));
    gh.factory<_i10.GetUserMasterDataUseCase>(
      () => _i10.GetUserMasterDataUseCase(gh<_i6.HomeRepository>()),
      instanceName: 'userMasterDate',
    );
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(
          gh<_i10.GetUserMasterDataUseCase>(instanceName: 'userMasterDate'),
          gh<_i9.GetMealCategories>(),
        ));
    return this;
  }
}

class _$AppModule extends _i12.AppModule {}
