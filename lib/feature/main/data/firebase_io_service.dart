import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kind_owl/common/data/i_auth_service.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/constans/firestore__constans.dart';
import 'package:l/l.dart';

// @LazySingleton(as: IIoService)
// @prod
class FirebaseIoService implements IIoService {
  final fbStore = FirebaseFirestore.instance;

  @override
  Future<List<DocumentSnapshot>> fetch(Map<String, dynamic> params) async {
    late final response;
    if (params.containsKey('textSearch')) {
      response = await _fetchSearchingText(params);
    } else {
      response = await _fetchAllUsers(params);
    }
    l.s('io service ${response.docs}');
    return response.docs;
  }

  Future<dynamic> _fetchSearchingText(Map<String, dynamic> params) async =>
      await fbStore
          .collection(params['pathCollection'])
          .limit(params['limit'])
          .where(FirestoreConstans.nickName, isEqualTo: params['textSearch'])
          .get();

  Future<dynamic> _fetchAllUsers(
          Map<String, dynamic> params) async =>
      await fbStore
          .collection(
              params['pathCollection'] ?? FirestoreConstans.pathUserCollection)
          .limit(params['limit'] ?? FirestoreConstans.limit)
          .get();

  @override
  Future<void> send(Map<String, dynamic> params) async {}

  Future<dynamic> _updateRemoteData(Map<String, dynamic> params) async =>
      await fbStore
          .collection(params['pathCollection'])
          .doc(params['path'])
          .update(params['dataNeedUpdate']);
}
