import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';
import 'package:kind_owl/common/ui/app_components/app_loading_widget.dart';
import 'package:kind_owl/feature/main/data/firebase_io_service.dart';
import 'package:kind_owl/feature/main/domain/entities/main_screen_data_entity.dart';
import 'package:kind_owl/feature/main/domain/firebase_io_repository.dart';
import 'package:kind_owl/feature/main/ui/bloc/main_screen_bloc.dart';
import 'package:kind_owl/feature/main/ui/users_list_screen.dart';

class MainScreenBuilder extends StatelessWidget {
  const MainScreenBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainScreenBLoC>(
      create: (context) =>
          MainScreenBLoC(repository: getIt.get<IIoRepository>())
            ..add(const MainScreenBLoCEvent.fetch()),
      child: BlocConsumer<MainScreenBLoC, MainScreenBLoCState>(
          builder: (context, state) => state.maybeMap(
              onChat: (_) => Scaffold(
                    appBar: AppBar(title: const Text("CHAT SCREEN")),
                  ),
              offChat: (state) =>
                  UsersListScreen(users: state.data?.users ?? []),
              processing: (_) => const AppLoadingWidget(),
              orElse: () => const Text('ERROR')),
          listener: (context, state) {}),
    );

    // Scaffold(
    //   body: Center(
    //     child:
    // FutureBuilder(
    //     future: getIt.get<IIoRepository>().fetch({
    //       'pathCollection': FirestoreConstans.pathUserCollection,
    //       'limit': 20,
    //     }),
    //     builder: (context, snapshot) {
    //       late final showWidgets;
    //       if (snapshot.hasData) {
    //         final data = snapshot.data as MainScreenDataEntity;
    //         final users = data.users;
    //         if (users != null) {
    //           showWidgets = List.generate(
    //               users.length,
    //               (i) => Text("uid: ${users[i].uid ?? "NO DATA"}\n" +
    //                   "name: ${users[i].name ?? "NO DATA"}\n" +
    //                   "photo: ${users[i].photo ?? "NO DATA"}\n"));
    //         }
    //       } else if (snapshot.hasData) {
    //         showWidgets = [Text(snapshot.error.toString())];
    //       } else {
    //         showWidgets = [AppLoadingWidget()];
    //       }

    //       return Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [...showWidgets],
    //       );
    //     }),
    //     ),
    //   ),
    // );
  }
}
