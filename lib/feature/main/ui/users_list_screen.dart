import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key, required this.users});
  final List<UserEntity?> users;

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
          itemBuilder: (context, index) {
            late final whatToShow;

            if (widget.users.isNotEmpty) {
              final indexedUser = widget.users[index];
              whatToShow = InkWell(
                child: UserCard(user: indexedUser),
                onTap: () => BlocProvider.of<MainScreenBLoC>(context)
                    .add(MainScreenBLoCEvent.startChat(withUser: indexedUser)),
              );
            } else {
              whatToShow = const Text("Nobody's here..");
            }
            return whatToShow;
          },
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user});
  final UserEntity? user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text("${user?.name?[0]}"),
      ),
      title: Text("${user?.name}"),
      subtitle: Text("${user?.uid}"),
    );
  }
}
