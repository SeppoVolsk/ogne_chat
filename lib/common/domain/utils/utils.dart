import 'package:kind_owl/common/data/i_auth_service.dart';
import 'package:kind_owl/common/domain/di/init_di.dart';
import 'package:l/l.dart';

abstract class Utils {
  static Future<void> preloadAllAppValues(String env) async {
    late dynamic preloadResult;
    try {
      initDi(env);
      preloadResult = getIt<IAuthService>().prepare();
    } catch (e) {
      l.e('preloadAllAppValues: an error occured\n ${e.toString()}');
      rethrow;
    }
    return preloadResult;
  }

  static DateTime toCurrentGmtDateTime(String unixTimestamp) {
    const currentGMT = Duration(hours: 3);
    final unixtime = int.tryParse(unixTimestamp);
    final dateTime = unixtime != null
        ? DateTime.fromMillisecondsSinceEpoch(unixtime)
        : DateTime.now();
    return dateTime.toUtc().add(currentGMT);
  }
}
