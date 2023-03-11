import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/auth/domain/constants/firestore__constans.dart';
import 'package:kind_owl/feature/main/ui/bloc/chat_member_entity.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: FutureBuilder(
            future: getIt.get<IIoRepository>().fetch({
              'pathCollection': FirestoreConstans.pathUserCollection,
              'limit': 20,
              'textSearch': '',
            }),
            builder: (context, snapshot) {
              late final showWidgets;
              if (snapshot.hasData) {
                //   final incoming = snapshot.data as List;
                //   showWidgets =
                //       List.generate(incoming.length, (i) => Text(incoming[i].id));
                final chatMembers = snapshot.data as List<ChatMemberEntity>;
                showWidgets = List.generate(
                    chatMembers.length,
                    (i) => Text("uid: ${chatMembers[i].uid ?? "NO DATA"}\n" +
                        "name: ${chatMembers[i].name ?? "NO DATA"}\n" +
                        "photo: ${chatMembers[i].photo ?? "NO DATA"}\n"));
              } else if (snapshot.hasData) {
                showWidgets = [Text(snapshot.error.toString())];
              } else {
                showWidgets = [Text("Loading...")];
              }

              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [...showWidgets],
              ));
            }),
      ),
    );
  }
}
