abstract class IAuthRepository {
  dynamic signIn({required String email, required String password});
  dynamic register({required String email, required String password});
  dynamic signOut();
}
