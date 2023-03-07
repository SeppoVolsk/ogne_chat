import 'package:kind_owl/feature/auth/ui/bloc/user_entity.dart';

abstract class IAuthRepository {
  dynamic signIn({required String email, required String password});
  dynamic signOut();
}
