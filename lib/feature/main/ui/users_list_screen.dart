import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/ui/app_components/logout_widget.dart';
import 'package:kind_owl/feature/auth/ui/bloc/auth_bloc.dart';
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart';
import 'package:kind_owl/feature/main/ui/user_list_screen_drawer.dart';
import 'package:kind_owl/feature/profile/ui/profile_screen.dart';
import 'package:l/l.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key, required this.allUsers});
  final List<UserEntity?> allUsers;

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  late final UserEntity? currentUser;
  late List<UserEntity?> usersExcludeCurrent;

  @override
  void initState() {
    currentUser = context.read<AuthBLoC>().state.user;
    usersExcludeCurrent = List.of(widget.allUsers)
      ..removeWhere((user) => user?.uid == currentUser?.uid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const UserListScreenDrawer(),
      appBar: AppBar(
        title: Text('${currentUser?.name}'),
      ),
      body: Center(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemCount: usersExcludeCurrent.length,
          itemBuilder: (context, index) {
            late final Widget whatToShow;

            if (usersExcludeCurrent.isNotEmpty) {
              final indexedUser = usersExcludeCurrent[index];
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
      title: Text("${user?.name} "),
      subtitle: Text("${user?.uid}"),
    );
  }
}
