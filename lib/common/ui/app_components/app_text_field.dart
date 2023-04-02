import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.controller,
      required this.labelText,
      this.obscureText = false,
      this.defaultText});

  final TextEditingController controller;
  final String labelText;
  final bool obscureText; //Hidden text
  final String? defaultText;

  @override
  Widget build(BuildContext context) {
    controller.text = defaultText ?? '';
    return TextFormField(
      obscureText: obscureText,
      validator: (value) => value?.isEmpty == true
          ? AppLocalizations.of(context)?.requiredField
          : null,
      maxLines: 1,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  String? emptyValidator(String? value) {
    if (value?.isEmpty == true) {
      return "Required field";
    }
    return null;
  }
}
