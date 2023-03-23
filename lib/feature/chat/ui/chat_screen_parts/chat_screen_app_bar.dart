import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/ui/app_components/select_language_widget.dart';
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart';
import 'package:kind_owl/feature/main/ui/users_list_screen.dart';

class ChatScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatScreenAppBar({super.key, this.user});
  final UserEntity? user;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(onPressed: () {
        di.popScope;
        BlocProvider.of<MainScreenBLoC>(context)
            .add(const MainScreenBLoCEvent.fetch());
      }),
      title: UserCard(user: user),
      actions: const [SelectLocaleWidget()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
