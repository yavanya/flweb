import 'package:flweb/repository/api/iresponce.dart';

class EmployeeResponseMockImpl implements IApiResponse {
  @override
  final bool isSuccessful;

  @override
  final String message;

  @override
  final Map<String, dynamic>? data;

  const EmployeeResponseMockImpl({
    required this.isSuccessful,
    required this.message,
    this.data,
  });
}
