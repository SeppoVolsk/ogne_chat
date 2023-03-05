import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kind_owl/common/ui/root_screen.dart';
import 'package:kind_owl/firebase_options.dart';

class InitialWidget extends StatefulWidget {
  const InitialWidget({super.key});

  @override
  State<InitialWidget> createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<InitialWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: FutureBuilder(
            future: Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform,
            ),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? const RootScreen()
                  : snapshot.hasError
                      ? const Text("ERROR")
                      : const CircularProgressIndicator();
            }),
      ),
    );
  }
}
