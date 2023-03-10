import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kind_owl/common/data/i_remote_service.dart';

class FirebaseMainScreenService extends IRemoteService {
  fetch({
    required String pathCollection,
    required int limit,
    required String textSearch,
  }) {
    final fbStore = FirebaseFirestore.instance;
    final response;
  }
}
