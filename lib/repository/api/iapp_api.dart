import 'iresponce.dart';

abstract interface class IAppApi {
  Future<IApiResponse> fetchEmployees();
  Future<IApiResponse> fetchEmployee(String id);
  Future<IApiResponse> createEmployee(String id, Map<String, dynamic> data);
  Future<IApiResponse> updateEmployee(String id, Map<String, dynamic> data);
  Future<IApiResponse> deleteEmployee(String id);
}
