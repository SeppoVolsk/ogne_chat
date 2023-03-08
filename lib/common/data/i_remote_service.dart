import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

abstract class IRemoteService {
  dynamic prepare();

  dynamic signIn({required String email, required String password});

  dynamic signOut();

  dynamic register({required String email, required String password});
}
