import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/auth/domain/constants/firestore__constans.dart';

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
              late final res;
              if (snapshot.hasData) {
                res = snapshot.data;
              } else if (snapshot.hasData) {
                res = snapshot.error;
              } else {
                res = 'Loading...';
              }

              return Center(child: Text(res));
            }),
      ),
    );
  }
}
