import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/ui/app_components/select_color_widget.dart';
import 'package:kind_owl/common/ui/app_components/select_language_widget.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:kind_owl/feature/profile/ui/profile_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserListScreenDrawer extends StatefulWidget {
  const UserListScreenDrawer({super.key});

  @override
  State<UserListScreenDrawer> createState() => _UserListScreenDrawerState();
}

class _UserListScreenDrawerState extends State<UserListScreenDrawer> {
  late final UserEntity? currentUser;
  bool _showLogoutWidget = false;

  @override
  void initState() {
    currentUser = context.read<AuthBLoC>().state.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration:
                BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
            currentAccountPicture: CircleAvatar(
              child: Text("${currentUser?.name?[0]}"),
            ),
            accountName: Text("${currentUser?.name}"),
            accountEmail: Text("${currentUser?.uid}"),
            onDetailsPressed: () =>
                setState(() => _showLogoutWidget = !_showLogoutWidget),
          ),
          if (_showLogoutWidget)
            ListTile(
              tileColor: Theme.of(context).primaryColor,
              title: Text(
                AppLocalizations.of(context)?.logout ?? '',
                style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
              ),
              trailing: Icon(Icons.exit_to_app,
                  color: Theme.of(context).secondaryHeaderColor),
              onTap: () {
                di.popScope;
                BlocProvider.of<AuthBLoC>(context)
                    .add(const AuthBlocEvent.logOut());
              },
            ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(AppLocalizations.of(context)?.profile ?? ''),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProfileScreen())),
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(AppLocalizations.of(context)?.language ?? ''),
            trailing: const SelectLanguageWidget(),
          ),
          ListTile(
            leading: const Icon(Icons.palette),
            title: Text(AppLocalizations.of(context)?.skins ?? ''),
            trailing: Icon(Icons.square_rounded,
                color: Theme.of(context).primaryColor),
            onTap: () => showDialog(
                context: context,
                builder: (_) => SimpleDialog(
                    title: Row(
                      children: [
                        Row(
                          children: [
                            BackButton(
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                            Text(AppLocalizations.of(context)?.skins ?? ''),
                          ],
                        ),
                      ],
                    ),
                    children: [SelectColorWidget()])),
          ),
        ],
      ),
    );
  }
}
