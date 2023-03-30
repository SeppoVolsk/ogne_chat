import 'package:flutter/material.dart';
import 'package:kind_owl/common/ui/app_components/app_text_button.dart';
import 'package:kind_owl/common/ui/app_components/app_text_field.dart';
import 'package:kind_owl/common/ui/app_components/select_language_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final controllerNickName = TextEditingController();
  final controllerStatus = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.of(context).pop()
              // BlocProvider.of<MainScreenBLoC>(context)
              //     .add(const MainScreenBLoCEvent.fetch())
              ),
          title: Text(AppLocalizations.of(context)?.profile ?? ''),
          actions: const [SelectLanguageWidget()],
        ),
        body: Form(
          key: formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(),
                  const SizedBox(height: 16),
                  AppTextField(
                    controller: controllerNickName,
                    labelText: AppLocalizations.of(context)?.nickname ?? '',
                  ),
                  const SizedBox(height: 16),
                  AppTextField(
                    controller: controllerStatus,
                    labelText: AppLocalizations.of(context)?.status ?? '',
                  ),
                  const SizedBox(height: 16),
                  AppTextButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() == true) {}
                    },
                    text: AppLocalizations.of(context)?.save ?? '',
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
