import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/ui/app_components/app_text_button.dart';
import 'package:kind_owl/common/ui/app_components/app_text_field.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerPassword2 = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Registration Screen")),
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
                    labelText: "E-mail",
                  ),
                  const SizedBox(height: 16),
                  AppTextField(
                    controller: controllerPassword,
                    labelText: "Password",
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  AppTextField(
                    controller: controllerPassword2,
                    labelText: "Repeat Password",
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  AppTextButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() != true) return;
                      if (controllerPassword2.text != controllerPassword.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Passwords aren't identical")));
                      } else {
                        context.read<AuthBLoC>().add(AuthBlocEvent.register(
                            email: controllerEmail.text,
                            password: controllerPassword.text));
                        Navigator.of(context).pop();
                      }
                    },
                    text: "Registration",
                    backgroundColor: Colors.grey,
                  )
                ],
              ),
            ),
          ),
        ));
  }

//   void _onTapToSignUp(AuthCubit authCubit) => authCubit.signUp(
//         username: controllerLogin.text,
//         password: controllerPassword.text,
//         email: controllerEmail.text,
//       );
}
