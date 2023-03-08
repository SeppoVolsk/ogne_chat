import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:kind_owl/common/data/i_remote_service.dart';
import 'package:kind_owl/feature/auth/domain/constants/firestore__constans.dart';
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
    final fbAuth = FirebaseAuth.instance;
    User? fbUser;
    try {
      final userCredential = await fbAuth.signInWithEmailAndPassword(
          email: email, password: password);
      fbUser = userCredential.user;
    } catch (e) {
      l.e('FirebaseRemoteService signIn error\n$e');
      rethrow;
    }
    return fbUser;
  }

  @override
  Future<User?> register(
      {required String email, required String password}) async {
    final fbAuth = FirebaseAuth.instance;
    final fbStore = FirebaseFirestore.instance;
    User? fbUser;
    try {
      final userCredential = await fbAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      fbUser = userCredential.user;

      final result = await fbStore
          .collection(FirestoreConstans.pathUserCollection)
          .where(FirestoreConstans.id, isEqualTo: fbUser?.uid)
          .get();
      final documents = result.docs;
      if (documents.isEmpty) {
        fbStore
            .collection(FirestoreConstans.pathUserCollection)
            .doc(fbUser?.uid)
            .set({
          FirestoreConstans.nickName: fbUser?.displayName,
          FirestoreConstans.photoUrl: fbUser?.photoURL,
          FirestoreConstans.id: fbUser?.uid,
          'createAt': DateTime.now().millisecondsSinceEpoch.toString(),
          FirestoreConstans.chattingWith: null,
        });
      }
    } catch (e) {
      l.e('FirebaseRemoteService register error\n$e');
      rethrow;
    }
    return fbUser;
  }

  @override
  void signOut() {
    // TODO: implement fetch
  }
}
