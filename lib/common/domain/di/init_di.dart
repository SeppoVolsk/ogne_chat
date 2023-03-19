import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/di/init_di.config.dart';
import 'package:kind_owl/common/data/i_auth_service.dart';
import 'package:kind_owl/common/domain/repo/i_auth_repository.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/auth/data/firebase_auth_service.dart';
import 'package:kind_owl/feature/auth/domain/firebase_auth_repository.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:kind_owl/feature/main/data/firebase_io_service.dart';
import 'package:kind_owl/feature/main/domain/firebase_io_repository.dart';
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart';

final getIt = GetIt.instance;

@InjectableInit()
void initDi(String env) => getIt.init(environment: env);

@module
abstract class DiModule {
  // =============================== AUTH ===============================
  @Singleton(as: IAuthService)
  @prod
  FirebaseAuthService fbAuthServ() => FirebaseAuthService();

  @Singleton(as: IAuthRepository)
  @prod
  FirebaseAuthRepository fbAuthRepo(IAuthService authService) =>
      FirebaseAuthRepository(authService);

  @injectable
  AuthBLoC authBloc(IAuthRepository repository) =>
      AuthBLoC(repository: repository);

  // =============================== MAIN ===============================
  @LazySingleton(as: IIoService)
  @prod
  FirebaseIoService fbIoServ() => FirebaseIoService();

  @LazySingleton(as: IIoRepository)
  @prod
  FirebaseIoRepository fbIoRepo(IIoService ioService) =>
      FirebaseIoRepository(ioService);

  @injectable
  MainScreenBLoC mainBloc(IIoRepository repository) =>
      MainScreenBLoC(repository: repository);

  // =============================== CHAT ===============================
}

class Di {
  // FirebaseAuthService get fbAuthServ => getIt.get<FirebaseAuthService>();
  // FirebaseAuthRepository get fbAuthRepo => getIt.get<FirebaseAuthRepository>();
  AuthBLoC get authBloc => getIt.get<AuthBLoC>();

  // FirebaseIoService get fbMainServ => getIt.get<FirebaseIoService>();
  // FirebaseIoRepository get fbMainRepo => getIt.get<FirebaseIoRepository>();
  MainScreenBLoC get mainBloc => getIt.get<MainScreenBLoC>();

  const Di._();
}

const di = Di._();
