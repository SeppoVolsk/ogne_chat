// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kind_owl/common/data/i_auth_service.dart' as _i3;
import 'package:kind_owl/common/data/i_io_service.dart' as _i4;
import 'package:kind_owl/common/domain/di/init_di.dart' as _i9;
import 'package:kind_owl/common/domain/repo/i_auth_repository.dart' as _i5;
import 'package:kind_owl/common/domain/repo/i_io_repository.dart' as _i6;
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart' as _i8;
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart' as _i7;

const String _prod = 'prod';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
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
    final diModule = _$DiModule();
    gh.singleton<_i3.IAuthService>(
      diModule.fbAuthServ(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i4.IIoService>(
      () => diModule.fbIoServ(),
      registerFor: {_prod},
    );
    gh.singleton<_i5.IAuthRepository>(
      diModule.fbAuthRepo(gh<_i3.IAuthService>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i6.IIoRepository>(
      () => diModule.fbIoRepo(gh<_i4.IIoService>()),
      registerFor: {_prod},
    );
    gh.factory<_i7.MainScreenBLoC>(
        () => diModule.mainBloc(gh<_i6.IIoRepository>()));
    gh.factory<_i8.AuthBLoC>(
        () => diModule.authBloc(gh<_i5.IAuthRepository>()));
    return this;
  }
}

class _$DiModule extends _i9.DiModule {}
