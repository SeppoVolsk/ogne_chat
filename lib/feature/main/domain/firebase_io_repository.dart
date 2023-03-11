import 'package:injectable/injectable.dart';
import 'package:kind_owl/common/data/i_io_service.dart';
import 'package:kind_owl/common/domain/repo/i_io_repository.dart';
import 'package:l/l.dart';

@LazySingleton(as: IIoRepository)
@prod
class FirebaseIoRepository implements IIoRepository {
  final IIoService ioService;

  FirebaseIoRepository(this.ioService);

  @override
  Future fetch(Map<String, dynamic> params) async {
    final response = await ioService.fetch(params);
    l.s('io repo ${response}');
    return response;
  }

  @override
  send() {
    // TODO: implement send
  }
}
