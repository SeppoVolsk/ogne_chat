import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';

class FirebaseChatIoService implements IIoService {
  final fbStore = FirebaseFirestore.instance;

  /// Pull messages
  @override
  Future<dynamic> fetch(Map<String, dynamic> params) async => fbStore
      .collection(FirestoreConstans.pathMessageCollection)
      .doc(params['groupChatId'])
      .collection(params['groupChatId'])
      .orderBy(FirestoreConstans.timestamp, descending: true)
      .limit(params['limit'])
      .snapshots();
  

  /// Send message
  @override
  Future<dynamic> send(Map<String, dynamic> params) async {
    final dataToSend = params["message"];
    final from = dataToSend['idFrom'];
    final to = dataToSend['idTo'];
    final timestamp = dataToSend['timestamp'];
    final messageRef = fbStore
        .collection(FirestoreConstans.pathMessageCollection)
        .doc(from)
        .collection(to)
        .doc(timestamp);
    await messageRef.set(dataToSend);
  }
}
