import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/chat/data/firebase_chat_io_service.dart';
import 'package:kind_owl/feature/chat/domain/entities/chat_screen_entity.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:l/l.dart';

class FirebaseChatIoRepository implements IIoRepository {
  final IIoService ioService;
  final currentUser = FirebaseAuth.instance.currentUser;
  final UserEntity? withUser;

  FirebaseChatIoRepository(this.ioService, this.withUser);

  @override
  ChatScreenEntity fetch(Map<String, dynamic>? params) {
    Stream<dynamic>? channel;
    try {
      channel = ioService.fetch({
        'idFrom': currentUser?.uid,
        'idTo': withUser?.uid,
      });
    } catch (e) {
      l.e('FirebaseChatIoRepository error ${e.toString()}');
      rethrow;
    }
    return ChatScreenEntity(channel: channel);
  }

  @override
  Future<ChatScreenEntity> send(Map<String, dynamic>? params) async {
    final String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final newMessage = MessageEntity(
      idFrom: currentUser?.uid,
      idTo: withUser?.uid,
      timestamp: timestamp,
      content: params?['text'],
    );
    try {
      await ioService.send({"message": newMessage.toJson()});
    } catch (e) {
      l.e('FirebaseChatIoRepository error ${e.toString()}');
      rethrow;
    }
    return ChatScreenEntity(message: newMessage);
  }
}

extension on DocumentSnapshot {
  MessageEntity toMessageEntity() {
    late final idFrom, idTo, timestamp, content, type;
    try {
      idFrom = get(FirestoreConstans.idFrom);
      idTo = get(FirestoreConstans.idTo);
      timestamp = get(FirestoreConstans.timestamp);
      content = get(FirestoreConstans.content);
      type = get(FirestoreConstans.type);
    } catch (e) {
      l.e('FirebaseChatIoRepository error ${e.toString()}');
      rethrow;
    }
    return MessageEntity(
        idFrom: idFrom,
        idTo: idTo,
        timestamp: timestamp,
        content: content,
        type: type);
  }
}
