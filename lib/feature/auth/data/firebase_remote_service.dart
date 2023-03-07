import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:kind_owl/common/data/i_remote_service.dart';
import 'package:kind_owl/firebase_options.dart';
import 'package:l/l.dart';

@Singleton(as: IRemoteService)
@prod
class FirebaseRemoteService implements IRemoteService {
  @override
  Future prepare() {
    return Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  @override
  Future<User?> signIn(
      {required String email, required String password}) async {
    final auth = FirebaseAuth.instance;
    User? user;
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } catch (e) {
      l.e('FirebaseRemoteService signIn error\n$e');
      rethrow;
    }
    return user;
  }

  @override
  void signOut() {
    // TODO: implement fetch
  }
}
