// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kind_owl/common/data/i_auth_service.dart' as _i3;
import 'package:kind_owl/common/data/i_io_service.dart' as _i6;
import 'package:kind_owl/common/domain/di/init_di.dart' as _i12;
import 'package:kind_owl/common/domain/entities/user_entity.dart' as _i11;
import 'package:kind_owl/common/domain/repo/i_auth_repository.dart' as _i4;
import 'package:kind_owl/common/domain/repo/i_io_repository.dart' as _i7;
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart' as _i5;
import 'package:kind_owl/feature/chat/domain/firebase_chat_io_repository.dart'
    as _i10;
import 'package:kind_owl/feature/chat/ui/bloc/chat_screen_bloc.dart' as _i9;
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart' as _i8;

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
    gh.singleton<_i4.IAuthRepository>(
      diModule.fbAuthRepo(gh<_i3.IAuthService>()),
      registerFor: {_prod},
    );
    gh.factory<_i5.AuthBLoC>(
        () => diModule.authBloc(gh<_i4.IAuthRepository>()));
    return this;
  }

// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initMainScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'main',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        final diModule = _$DiModule();
        gh.lazySingleton<_i6.IIoService>(
          () => diModule.fbIoServ(),
          registerFor: {_prod},
        );
        gh.lazySingleton<_i7.IIoRepository>(
          () => diModule.fbIoRepo(gh<_i6.IIoService>()),
          registerFor: {_prod},
        );
        gh.factory<_i8.MainScreenBLoC>(
            () => diModule.mainBloc(gh<_i7.IIoRepository>()));
      },
    );
  }

// initializes the registration of chat-scope dependencies inside of GetIt
  _i1.GetIt initChatScope({_i1.ScopeDisposeFunc? dispose}) {
    return _i2.GetItHelper(this).initScope(
      'chat',
      dispose: dispose,
      init: (_i2.GetItHelper gh) {
        final diModule = _$DiModule();
        gh.factoryParam<_i9.ChatScreenBLoC, _i7.IIoRepository, dynamic>(
          (
            repository,
            _,
          ) =>
              diModule.chatBloc(repository),
          registerFor: {_prod},
        );
        gh.singleton<_i6.IIoService>(
          diModule.fbChatService(),
          registerFor: {_prod},
        );
        gh.factoryParam<_i10.FirebaseChatIoRepository, _i11.UserEntity,
            dynamic>(
          (
            withUser,
            _,
          ) =>
              diModule.fbChatRepo(
            gh<_i6.IIoService>(),
            withUser,
          ),
          registerFor: {_prod},
        );
      },
    );
  }
}

class _$DiModule extends _i12.DiModule {}
