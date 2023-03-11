import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kind_owl/common/data/i_auth_service.dart';
import 'package:kind_owl/common/domain/repo/i_auth_repository.dart';
import 'package:kind_owl/feature/auth/ui/bloc/user_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:l/l.dart';

@Singleton(as: IAuthRepository)
@prod
class FirebaseAuthRepository implements IAuthRepository {
  final IAuthService authService;

  FirebaseAuthRepository(this.authService);

  late final User? userDTO;
  @override
  Future<UserEntity> signIn(
      {required String email, required String password}) async {
    try {
      userDTO = await authService.signIn(email: email, password: password);
    } catch (e) {
      l.e('FirebaseAuthRepository error\n$e');
      rethrow;
    }
    return userDTO?.toUserEntity() ?? UserEntity();
  }

  @override
  signOut() {
    // TODO: implement pull
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> register(
      {required String email, required String password}) async {
    //late final User? userDTO;
    try {
      userDTO = await authService.register(email: email, password: password);
    } catch (e) {
      l.e('FirebaseAuthRepository error\n$e');
      rethrow;
    }
    return userDTO?.toUserEntity() ?? UserEntity();
  }
}

extension on User {
  UserEntity toUserEntity() {
    return UserEntity(
      uid: uid,
      name: displayName,
      photo: photoURL,
    );
  }
}
