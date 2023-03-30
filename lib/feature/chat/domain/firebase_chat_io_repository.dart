import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:l/l.dart';
import 'dart:async';

class FirebaseChatIoRepository implements IIoRepository {
  final IIoService ioService;
  final currentUser = FirebaseAuth.instance.currentUser;
  final UserEntity? withUser;

  String get _groupId => '${currentUser?.uid}'.compareTo('${withUser?.uid}') > 0
      ? '${currentUser?.uid}-${withUser?.uid}'
      : '${withUser?.uid}-${currentUser?.uid}';

  FirebaseChatIoRepository(this.ioService, this.withUser);

  @override
  Stream<List<MessageEntity>> fetch({Map<String, dynamic>? params}) {
    final Stream<List<MessageEntity>> messagesStream;
    final toStreamMessages = StreamTransformer<
        QuerySnapshot<Map<String, dynamic>>, List<MessageEntity>>.fromHandlers(
      handleData: (QuerySnapshot snap, EventSink<List<MessageEntity>> sink) {
        List<MessageEntity> messasgeList =
            snap.docs.map((e) => MessageEntity.fromDocument(e)).toList();
        l.e("TRANSFORMER DONE ${messasgeList.length}}");
        sink.add(messasgeList);
      },
      handleError: (error, stackTrace, sink) {
        throw error;
      },
    );
    try {
      Stream<QuerySnapshot<Map<String, dynamic>>> fbOriginStream =
          ioService.fetch({'groupId': _groupId});
      messagesStream = fbOriginStream.transform(toStreamMessages);
    } catch (e) {
      l.e('FirebaseChatIoRepository error ${e.toString()}');
      rethrow;
    }
    return messagesStream;
  }

  @override
  Future<void> send({Map<String, dynamic>? params}) async {
    final String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final newMessage = MessageEntity(
      idFrom: currentUser?.uid,
      idTo: withUser?.uid,
      timestamp: timestamp,
      content: params?['text'],
    );
    try {
      await ioService
          .send({'message': newMessage.toJson(), 'groupId': _groupId});
    } catch (e) {
      l.e('FirebaseChatIoRepository error ${e.toString()}');
      rethrow;
    }
  }
}
