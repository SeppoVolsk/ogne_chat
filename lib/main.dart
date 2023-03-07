import 'package:flutter/material.dart';
import 'package:kind_owl/common/ui/initial_widget.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  const env = String.fromEnvironment("env", defaultValue: "prod");
  runApp(const InitialWidget(env: env));
}
