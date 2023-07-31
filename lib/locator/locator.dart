import 'package:get_it/get_it.dart';

import 'package:flweb/repository/api/employee_api_storage_impl.dart';
import 'package:flweb/repository/api/iapp_api.dart';
import 'package:flweb/repository/services/auth_service.dart';
import 'package:flweb/repository/services/employee_service.dart';
import 'package:flweb/repository/services/storage_service.dart';

Future<void> setupLocator() async {
  GetIt.I.registerSingleton<StorageService>(StorageService());
  await GetIt.I<StorageService>().init();
  GetIt.I.registerSingleton<AuthService>(AuthService());
  await GetIt.I<AuthService>().init(10);
  GetIt.I.registerSingleton<IAppApi>(EmployeeMockApiImpl());
  GetIt.I.registerSingleton<EmployeeService>(EmployeeService());
}
