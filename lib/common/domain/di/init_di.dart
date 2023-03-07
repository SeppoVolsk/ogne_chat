import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kind_owl/common/domain/di/init_di.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void initDi(String env) => getIt.init(environment: env);
