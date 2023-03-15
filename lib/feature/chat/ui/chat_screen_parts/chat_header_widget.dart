import 'package:flutter/material.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/feature/main/ui/users_list_screen.dart';

class ChatHeaderWidget extends StatelessWidget {
  const ChatHeaderWidget({super.key, this.user});
  final UserEntity? user;

  @override
  Widget build(BuildContext context) {
    return UserCard(user: user);
  }
}
