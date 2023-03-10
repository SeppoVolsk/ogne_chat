import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/ui/app_components/app_text_button.dart';
import 'package:kind_owl/common/ui/app_components/app_text_field.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:kind_owl/feature/auth/ui/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("LoginScreen")),
        body: Form(
          key: formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppTextField(
                    controller: controllerEmail,
                    labelText: "Email",
                  ),
                  const SizedBox(height: 16),
                  AppTextField(
                    controller: controllerPassword,
                    labelText: "Password",
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  AppTextButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() == true) {
                        context.read<AuthBLoC>().add(AuthBlocEvent.logIn(
                            email: controllerEmail.text,
                            password: controllerPassword.text));
                      }
                    },
                    text: "LOGIN",
                  ),
                  AppTextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                    },
                    text: "Registration",
                    backgroundColor: Colors.blueGrey,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
