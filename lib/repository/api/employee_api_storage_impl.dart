import 'dart:convert';

import 'package:get_it/get_it.dart';

import 'package:flweb/repository/api/iapp_api.dart';
import 'package:flweb/repository/api/iresponce.dart';
import 'package:flweb/repository/services/storage_service.dart';

import 'employee_responce_mock_impl.dart';

class EmployeeMockApiImpl implements IAppApi {
  final _storage = GetIt.I<StorageService>();

  @override
  Future<IApiResponse> createEmployee(
      String id, Map<String, dynamic> data) async {
    try {
      final source = await _storage.getString('employees');

      final sourceDecoded = json.decode(source);

      if (sourceDecoded is List) {
        final employee = {
          'id': id,
          ...data,
        };

        sourceDecoded.add(employee);
        await _storage.writeAsync('employees', json.encode(sourceDecoded));
        return const EmployeeResponseMockImpl(
          isSuccessful: true,
          message: 'Employee Created',
        );
      } else {
        return const EmployeeResponseMockImpl(
          isSuccessful: false,
          message: 'Employee list damaged',
        );
      }
    } catch (e) {
      return EmployeeResponseMockImpl(
        isSuccessful: false,
        message: e.toString(),
      );
    }
  }

  @override
  Future<IApiResponse> deleteEmployee(String id) async {
    try {
      final source = await _storage.getString('employees');

      final sourceDecoded = json.decode(source);

      if (sourceDecoded is List) {
        sourceDecoded.removeWhere((element) => element['id'] == id);
        await _storage.writeAsync('employees', json.encode(sourceDecoded));
        return const EmployeeResponseMockImpl(
          isSuccessful: true,
          message: 'Employee deleted',
        );
      } else {
        return const EmployeeResponseMockImpl(
          isSuccessful: false,
          message: 'Employee list damaged',
        );
      }
    } catch (e) {
      return EmployeeResponseMockImpl(
        isSuccessful: false,
        message: e.toString(),
      );
    }
  }

  @override
  Future<IApiResponse> fetchEmployee(String id) async {
    try {
      final source = await _storage.getString('employees');

      final sourceDecoded = json.decode(source);

      if (sourceDecoded is List) {
        final employeeJson =
            sourceDecoded.firstWhere((element) => element['id'] == id);

        return EmployeeResponseMockImpl(
          isSuccessful: true,
          message: 'Employee fetched',
          data: employeeJson,
        );
      } else {
        return const EmployeeResponseMockImpl(
          isSuccessful: false,
          message: 'Employee list damaged',
        );
      }
    } catch (e) {
      return EmployeeResponseMockImpl(
        isSuccessful: false,
        message: e.toString(),
      );
    }
  }

  @override
  Future<IApiResponse> fetchEmployees() async {
    try {
      final source = await _storage.getString('employees');

      return EmployeeResponseMockImpl(
          isSuccessful: true,
          message: 'Employees fetched',
          data: {
            'employees': source,
          });
    } catch (e) {
      return EmployeeResponseMockImpl(
        isSuccessful: false,
        message: e.toString(),
      );
    }
  }

  @override
  Future<IApiResponse> updateEmployee(
      String id, Map<String, dynamic> data) async {
    try {
      final source = await _storage.getString('employees');

      final sourceDecoded = json.decode(source);

      if (sourceDecoded is List) {
        final index =
            sourceDecoded.indexWhere((element) => element['id'] == id);

        final employee = {
          'id': id,
          ...data,
        };

        sourceDecoded[index] = employee;

        await _storage.writeAsync('employees', json.encode(sourceDecoded));
        return const EmployeeResponseMockImpl(
          isSuccessful: true,
          message: 'Employee updated',
        );
      } else {
        return const EmployeeResponseMockImpl(
          isSuccessful: false,
          message: 'Employee list damaged',
        );
      }
    } catch (e) {
      return EmployeeResponseMockImpl(
        isSuccessful: false,
        message: e.toString(),
      );
    }
  }
}
