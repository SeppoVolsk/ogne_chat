import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kind_owl/common/data/i_auth_service.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/feature/auth/domain/constants/firestore__constans.dart';
import 'package:l/l.dart';

@LazySingleton(as: IIoService)
@prod
class FirebaseIoService implements IIoService {
  final fbStore = FirebaseFirestore.instance;

  @override
  Future<List<DocumentSnapshot>> fetch(Map<String, dynamic> params) async {
    late final response;
    if (params['textSearch'].isNotEmpty) {
      response = await fbStore
          .collection(params['pathCollection'])
          .limit(params['limit'])
          .where(FirestoreConstans.nickName, isEqualTo: params['textSearch'])
          .get();
    } else {
      response = await fbStore
          .collection(params['pathCollection'])
          .limit(params['limit'])
          .get();
    }
    l.s('io service ${response.docs}');
    return response.docs;
  }

  @override
  send() {
    // TODO: implement send
    throw UnimplementedError();
  }
}
