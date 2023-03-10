import 'package:kind_owl/common/data/i_remote_service.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:l/l.dart';

abstract class Utils {
  static Future<void> preloadAllAppValues(String env) async {
    late dynamic preloadResult;
    try {
      initDi(env);
      preloadResult = getIt<IRemoteService>().prepare();
    } catch (e) {
      l.e('preloadAllAppValues: an error occured');
      throw Error();
    }
    return preloadResult;
  }
}
