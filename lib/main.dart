import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kind_owl/common/ui/initial_widget.dart';
import 'package:kind_owl/firebase_options.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const InitialWidget());
}
