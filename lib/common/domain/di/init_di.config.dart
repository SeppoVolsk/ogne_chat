// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kind_owl/common/data/i_remote_service.dart' as _i3;
import 'package:kind_owl/common/domain/repo/i_auth_repository.dart' as _i5;
import 'package:kind_owl/feature/auth/data/firebase_remote_service.dart' as _i4;
import 'package:kind_owl/feature/auth/domain/firebase_auth_repository.dart'
    as _i6;
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart' as _i7;
import 'package:kind_owl/feature/auth/ui/bloc/user_entity.dart' as _i8;

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
    gh.singleton<_i3.IRemoteService>(
      _i4.FirebaseRemoteService(),
      registerFor: {_prod},
    );
    gh.singleton<_i5.IAuthRepository>(
      _i6.FirebaseAuthRepository(gh<_i3.IRemoteService>()),
      registerFor: {_prod},
    );
    gh.factoryParam<_i7.AuthBLoC, _i8.UserEntity?, dynamic>((
      user,
      _,
    ) =>
        _i7.AuthBLoC(
          repository: gh<_i5.IAuthRepository>(),
          user: user,
        ));
    return this;
  }
}
