import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';

class FirebaseChatIoService implements IIoService {
  final fbStore = FirebaseFirestore.instance;

  @override

  /// Pull messages
  Future<dynamic> fetch(Map<String, dynamic> params) async {
    final query = await fbStore
        .collection(FirestoreConstans.pathMessageCollection)
        .doc(params['groupChatId'])
        .collection(params['groupChatId'])
        .orderBy(FirestoreConstans.timestamp, descending: true)
        .limit(params['limit'])
        .get();
    return query.docs;
  }

  @override

  /// Send message
  Future<dynamic> send(Map<String, dynamic> params) async {
    final dataToSend = params;
    final documentReference = fbStore
        .collection(FirestoreConstans.pathMessageCollection)
        .doc(params['groupChatId'])
        .collection('groupChatId')
        .doc(DateTime.now().millisecondsSinceEpoch.toString());
    fbStore.runTransaction((transaction) async {
      transaction.set(documentReference, dataToSend);
    });
  }
}
