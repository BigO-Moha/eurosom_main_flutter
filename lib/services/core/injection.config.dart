// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../logic/bloc/auth_bloc.dart' as _i6;
import '../../models/absatractions/auth.dart' as _i4;
import '../auth/auth_facade.dart' as _i5;
import '../auth/auth_rest_api.dart' as _i3;
import 'dependency_injections.dart' as _i7;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final serviceProviders = _$ServiceProviders();
  gh.lazySingleton<_i3.AuthApiService>(() => serviceProviders.authClient);
  gh.lazySingleton<_i4.IAuthFacade>(
      () => _i5.AuthFacade(gh<_i3.AuthApiService>()));
  gh.factory<_i6.AuthBloc>(() => _i6.AuthBloc(gh<_i4.IAuthFacade>()));
  return getIt;
}

class _$ServiceProviders extends _i7.ServiceProviders {}
