import 'package:flutter/material.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key, required this.users});
  final List<UserEntity> users;

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("USERS")),
      body: Center(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemCount: widget.users.length,
          itemBuilder: (context, index) => widget.users.isNotEmpty
              ? UserCard(user: widget.users[index])
              : const Text("Nobody's here.."),
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user});
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text("${user.name?[0]}"),
      ),
      title: Text("${user.name}"),
      subtitle: Text("${user.uid}"),
    );
  }
}
