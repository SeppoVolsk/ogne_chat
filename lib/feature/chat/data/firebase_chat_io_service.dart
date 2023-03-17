import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';
import 'package:l/l.dart';

class FirebaseChatIoService implements IIoService {
  final fbStore = FirebaseFirestore.instance;

  /// Pull messages
  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> fetch(
          Map<String, dynamic> params) =>
      fbStore
          .collection(FirestoreConstans.pathMessageCollection)
          .doc(params['idFrom'])
          .collection(params['idTo'])
          .orderBy(FirestoreConstans.timestamp, descending: true)
          .limit(FirestoreConstans.limit)
          .snapshots();

  /// Send message
  @override
  Future<dynamic> send(Map<String, dynamic> params) async {
    final dataToSend = params["message"];
    final from = dataToSend['idFrom'];
    final to = dataToSend['idTo'];
    final timestamp = dataToSend['timestamp'];
    try {
      final messageRef = fbStore
          .collection(FirestoreConstans.pathMessageCollection)
          .doc(from)
          .collection(to)
          .doc(timestamp);
      await messageRef.set(dataToSend);
    } catch (e) {
      l.e('FirebaseChatIoService error ${e.toString()}');
      rethrow;
    }
  }
}
