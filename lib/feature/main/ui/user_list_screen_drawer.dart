import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
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
            currentAccountPicture:
                CircleAvatar(child: Text("${currentUser?.name?[0]}")),
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
              trailing: const Icon(Icons.exit_to_app),
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
        ],
      ),
    );
  }
}
