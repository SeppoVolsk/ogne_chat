abstract class IAuthService {
  dynamic prepare() {}

  dynamic signIn({required String email, required String password}) {}

  dynamic signOut() {}

  dynamic register({required String email, required String password}) {}
}
