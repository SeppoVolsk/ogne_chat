import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/entities/user_entity.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:kind_owl/feature/main/domain/entities/main_screen_data_entity.dart';

import 'package:l/l.dart';

// @LazySingleton(as: IIoRepository)
// @prod
class FirebaseIoRepository implements IIoRepository {
  final IIoService ioService;

  FirebaseIoRepository(this.ioService);

  @override
  Future<MainScreenDataEntity> fetch({Map<String, dynamic>? params}) async {
    late final List<DocumentSnapshot> docs;
    try {
      docs = await ioService.fetch(params ?? {});
    } catch (e) {
      l.e(e.toString());
      rethrow;
    }
    final usersIterable = docs.map((d) => UserEntity.fromDocument(d));
    return MainScreenDataEntity(users: usersIterable.toList());
  }

  @override
  send({Map<String, dynamic>? params}) {
    // TODO: implement send
  }
}

// extension on DocumentSnapshot {
//   UserEntity toUserEntity() {
//     late final fbName, fbPhoto;
//     try {
//       fbName = get(FirestoreConstans.nickName);
//       fbPhoto = get(FirestoreConstans.photoUrl);
//     } catch (e) {
//       l.e(e.toString());
//       rethrow;
//     }
//     return UserEntity(uid: id, name: fbName, photo: fbPhoto);
//   }
// }
