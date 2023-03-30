import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/ui/app_components/app_loading_widget.dart';
import 'package:kind_owl/feature/chat/ui/chat_builder.dart';
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart';
import 'package:kind_owl/feature/main/ui/users_list_screen.dart';

class MainScreenBuilder extends StatelessWidget {
  const MainScreenBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    di.initMainScope;
    return BlocProvider<MainScreenBLoC>(
      create: (context) => di.mainBloc..add(const MainScreenBLoCEvent.fetch()),
      child: BlocConsumer<MainScreenBLoC, MainScreenBLoCState>(
          builder: (context, state) => state.maybeMap(
              onChat: (_) => ChatBuilder(
                    chatWithUser: state.data?.users?.single,
                  ),
              offChat: (state) =>
                  UsersListScreen(allUsers: state.data?.users ?? []),
              processing: (_) => const AppLoadingWidget(),
              orElse: () => const Text('ERROR')),
          listener: (context, state) {}),
    );
  }
}
