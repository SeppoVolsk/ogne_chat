import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CupertinoActivityIndicator(
      radius: 50,
      color: Colors.red.shade400,
    ));
  }
}
