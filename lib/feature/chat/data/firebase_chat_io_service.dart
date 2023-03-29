import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';
import 'package:l/l.dart';

import '../domain/entities/message_entity.dart';

class FirebaseChatIoService implements IIoService {
  final fbStore = FirebaseFirestore.instance;

  /// Pull messages
  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> fetch(
      Map<String, dynamic> params) {
    final originStream = fbStore
        .collection(FirestoreConstans.pathMessageCollection)
        .doc(params['groupId'])
        .collection(params['groupId'])
        .orderBy(FirestoreConstans.timestamp, descending: true)
        .limit(FirestoreConstans.limit)
        .snapshots();

    return Stream.error("Firebase error");
//    originStream;
  }

  /// Send message
  @override
  Future<dynamic> send(Map<String, dynamic> params) async {
    try {
      final messageRef = fbStore
          .collection(FirestoreConstans.pathMessageCollection)
          .doc(params["groupId"])
          .collection(params["groupId"])
          .doc(params['message']['timestamp']);
      await messageRef.set(params["message"]);
      l.i("SENDING ${params['message']}");
    } catch (e) {
      l.e('FirebaseChatIoService error ${e.toString()}');
      rethrow;
    }
  }
}
