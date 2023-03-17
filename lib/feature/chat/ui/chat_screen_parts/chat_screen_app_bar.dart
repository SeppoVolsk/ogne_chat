import 'package:flutter/material.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/feature/main/ui/users_list_screen.dart';

class ChatScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatScreenAppBar({super.key, this.user});
  final UserEntity? user;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: UserCard(user: user));
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
