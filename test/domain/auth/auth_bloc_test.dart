import 'package:bloc_test/bloc_test.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/feature/auth/data/firebase_auth_service.dart';
import 'package:kind_owl/feature/auth/domain/firebase_auth_repository.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'auth_bloc_test.mocks.dart';

@GenerateMocks([FirebaseAuthService, FirebaseAuthRepository])
void main() {
  final authRepository = MockFirebaseAuthRepository();
  //final authBloc = AuthBLoC(repository: authRepository);
  final processingState = AuthBlocState.processing(user: UserEntity());
  final authenticatedState = AuthBlocState.authenticated(user: UserEntity());
  final errorState =
      AuthBlocState.error(error: "Auth Error", user: UserEntity());
  const logInEvent = AuthBlocEvent.logIn(email: '', password: '');

  blocTest<AuthBLoC, AuthBlocState>(
    'FirebaseAuthRepository.signIn returns authenticated user',
    setUp: () => when(authRepository.signIn(email: '', password: ''))
        .thenAnswer((_) async => UserEntity()),
    build: () => AuthBLoC(repository: authRepository),
    act: (bloc) => bloc.add(logInEvent),
    expect: () => [processingState, authenticatedState],
  );

  blocTest<AuthBLoC, AuthBlocState>(
    'FirebaseAuthRepository.signIn throws auth error',
    setUp: () => when(authRepository.signIn(email: '', password: ''))
        .thenThrow("Auth Error"),
    build: () => AuthBLoC(repository: authRepository),
    act: (bloc) => bloc.add(logInEvent),
    errors: () => ["Auth Error"],
    expect: () => [processingState, errorState],
  );
}
