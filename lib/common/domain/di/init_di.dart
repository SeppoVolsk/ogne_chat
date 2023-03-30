import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/di/init_di.config.dart';
import 'package:kind_owl/common/data/i_auth_service.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/domain/repo/i_auth_repository.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/auth/data/firebase_auth_service.dart';
import 'package:kind_owl/feature/auth/domain/firebase_auth_repository.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:kind_owl/feature/chat/data/firebase_chat_io_service.dart';
import 'package:kind_owl/feature/chat/domain/firebase_chat_io_repository.dart';
import 'package:kind_owl/feature/chat/ui/bloc/chat_screen_bloc.dart';
import 'package:kind_owl/feature/main/data/firebase_io_service.dart';
import 'package:kind_owl/feature/main/domain/firebase_io_repository.dart';
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart';

final getIt = GetIt.instance;

@InjectableInit()
void initDi(String env) => getIt.init(environment: env);

@module
abstract class DiModule {
  // -------------------------------- AUTH --------------------------------
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

  // -------------------------------- MAIN --------------------------------
  @Scope('main')
  @LazySingleton(as: IIoService)
  @prod
  FirebaseIoService fbIoServ() => FirebaseIoService();

  @Scope('main')
  @LazySingleton(as: IIoRepository)
  @prod
  FirebaseIoRepository fbIoRepo(IIoService ioService) =>
      FirebaseIoRepository(ioService);

  @Scope('main')
  @injectable
  MainScreenBLoC mainBloc(IIoRepository repository) =>
      MainScreenBLoC(repository: repository);

  // -------------------------------- CHAT --------------------------------

  @Scope('chat')
  @Singleton(as: IIoService)
  @prod
  FirebaseChatIoService fbChatService() => FirebaseChatIoService();

  @Scope('chat')
  @Injectable()
  @prod
  FirebaseChatIoRepository fbChatRepo(
          IIoService ioService, @factoryParam UserEntity withUser) =>
      FirebaseChatIoRepository(ioService, withUser);

  @Scope('chat')
  @Injectable()
  @prod
  ChatScreenBLoC chatBloc(@factoryParam IIoRepository repository) =>
      ChatScreenBLoC(repository: repository);
}

class Di {
  GetIt get initMainScope => getIt.initMainScope();
  GetIt get initChatScope => getIt.initChatScope();

  Future<void> get popScope async => await getIt.popScope();

  AuthBLoC get authBloc => getIt.get<AuthBLoC>();

  MainScreenBLoC get mainBloc => getIt.get<MainScreenBLoC>();

  ChatScreenBLoC chatBloc(UserEntity? wUser) => getIt.get<ChatScreenBLoC>(
      param1: getIt.get<FirebaseChatIoRepository>(param1: wUser));

  const Di._();
}

const di = Di._();
