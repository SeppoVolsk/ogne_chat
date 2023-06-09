import 'package:kind_owl/common/data/i_auth_service.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/domain/repo/i_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:l/l.dart';

// @Singleton(as: IAuthRepository)
// @prod
class FirebaseAuthRepository implements IAuthRepository {
  final IAuthService authService;

  FirebaseAuthRepository(this.authService);

  User? userDto;
  @override
  Future<UserEntity> signIn(
      {required String email, required String password}) async {
    try {
      userDto = await authService.signIn(email: email, password: password);
    } catch (e) {
      l.e('FirebaseAuthRepository Sign In error\n$e');
      rethrow;
    }
    return UserEntity.fromUserDto(userDto);
  }

  @override
  Future<UserEntity> signOut() async {
    try {
      await authService.signOut();
    } catch (e) {
      l.e('FirebaseAuthRepository SignOut error\n$e');
      rethrow;
    }
    return UserEntity();
  }

  @override
  Future<UserEntity> register(
      {required String email, required String password}) async {
    try {
      userDto = await authService.register(email: email, password: password);
    } catch (e) {
      l.e('FirebaseAuthRepository Register error\n$e');
      rethrow;
    }
    return UserEntity.fromUserDto(userDto);
  }
}

// extension on User {
//   UserEntity toUserEntity() {
//     return UserEntity(
//       uid: uid,
//       name: displayName,
//       photo: photoURL,
//     );
//   }
// }
