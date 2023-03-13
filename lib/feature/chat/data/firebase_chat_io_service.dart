import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';

class FirebaseChatIoService implements IIoService {
  final fbStore = FirebaseFirestore.instance;

  @override
  Future<dynamic> fetch(Map<String, dynamic> params) async => await fbStore
      .collection(FirestoreConstans.pathMessageCollection)
      .doc(params['groupChatId'])
      .collection(params['groupChatId'])
      .orderBy(FirestoreConstans.timestamp, descending: true)
      .limit(params['limit'])
      .get();

  @override
  send(Map<String, dynamic> params) async {
    final documentReference = fbStore
        .collection(FirestoreConstans.pathMessageCollection)
        .doc(params['groupChatId'])
        .collection('groupChatId')
        .doc(DateTime.now().millisecondsSinceEpoch.toString());
    // TO DO: make messageChat object (MessageChat model)
    fbStore.runTransaction((transaction) async {
      //transaction.set(documentReference, messageChat.toJson());
    });
  }
}
