import 'package:flutterproviderboilerplate/net/api_service_config.dart';
import 'package:flutterproviderboilerplate/services/login_service_imp.dart';
import 'package:flutterproviderboilerplate/services/serivice_locator.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
var config = ApiServiceConfig.instance;
Future<void> setupLocator()async
{
  locator.registerLazySingleton(() => LoginServiceImp(config?.dio));
}
