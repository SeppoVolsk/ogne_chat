import 'package:flutter/material.dart';
import 'package:kind_owl/common/domain/error/error_entity.dart';

abstract class AppSnackBar {
  static void showSnackBarWithMessage(BuildContext context, String message) {
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(SnackBar(
        duration: const Duration(seconds: 5),
        content: SingleChildScrollView(
          child: Text(
            message,
            maxLines: 5,
          ),
        )));
  }

  static void showSnackBarWithError(BuildContext context, ErrorEntity error) {
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(SnackBar(
        duration: const Duration(seconds: 5),
        content: SingleChildScrollView(
          child: Text(
            "Error: ${error.message}",
            maxLines: 5,
          ),
        )));
  }

  static void clearSnackBars(BuildContext context) {
    ScaffoldMessenger.maybeOf(context)?.clearSnackBars();
  }
}
