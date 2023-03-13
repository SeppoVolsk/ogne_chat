import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/chat/domain/entities/message_entity.dart';
import 'package:l/l.dart';

class FirebaseChatIoRepository implements IIoRepository {
  final IIoService ioService;

  FirebaseChatIoRepository(this.ioService);

  @override
  fetch(Map<String, dynamic> params) {}

  @override
  Future<MessageEntity> send(Map<String, dynamic> params) async {
    late final dataToSend;
    try {
      dataToSend = MessageEntity(
              idFrom: params['idFrom'],
              idTo: params['idTo'],
              timestamp: params['timestamp'],
              content: params['content'],
              type: params['type'])
          .toJson();
      ioService.send(dataToSend);
    } catch (e) {
      l.e(e.toString());
      rethrow;
    }
    return MessageEntity();
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
      l.e(e.toString());
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
