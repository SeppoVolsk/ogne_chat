import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/auth/domain/constants/firestore__constans.dart';
import 'package:kind_owl/feature/main/ui/bloc/chat_member_entity.dart';
import 'package:l/l.dart';

@LazySingleton(as: IIoRepository)
@prod
class FirebaseIoRepository implements IIoRepository {
  final IIoService ioService;

  FirebaseIoRepository(this.ioService);

  @override
  Future<List<ChatMemberEntity>> fetch(Map<String, dynamic> params) async {
    final List<DocumentSnapshot> docs = await ioService.fetch(params);
    l.s('io repo ${docs}');
    final new1 = docs.map((e) async => await e.toChatMemberEntity()).toList();

    return new1;
  }

  @override
  send() {
    // TODO: implement send
  }
}

extension on DocumentSnapshot {
  Future<ChatMemberEntity> toChatMemberEntity() async {
    late final fbName, fbPhoto;
    try {
      fbName = await get(FirestoreConstans.nickName);
      fbPhoto = await get(FirestoreConstans.photoUrl);
    } catch (e) {
      l.e(e.toString());
      rethrow;
    }
    return ChatMemberEntity(uid: id, name: fbName, photo: fbPhoto);
  }
}
