import 'dart:convert';

import 'package:flweb/models/employee/employee_form.dart';
import 'package:get_it/get_it.dart';

import 'package:flweb/models/employee/employee.dart';
import 'package:flweb/repository/api/iapp_api.dart';
import 'package:uuid/uuid.dart';

class EmployeeService {
  final _api = GetIt.I<IAppApi>();

  Future<bool> updateEmployee(Employee employee) async {
    final response = await _api.updateEmployee(employee.id, employee.toJson());
    if (response.isSuccessful) {
      return true;
    } else {
      throw Exception(response.message);
    }
  }

  Future<bool> createEmployee(EmployeeForm form) async {
    final id = const Uuid().v4();
    form = form.copyWith(id: id);

    final response = await _api.createEmployee(id, form.toJson());

    if (response.isSuccessful) {
      return true;
    } else {
      throw Exception(response.message);
    }
  }

  Future<bool> deleteEmployee(String id) async {
    final response = await _api.deleteEmployee(id);
    if (response.isSuccessful) {
      return true;
    } else {
      throw Exception(response.message);
    }
  }

  Future<Employee> fetchEmployee(String id) async {
    final response = await _api.fetchEmployee(id);
    if (response.isSuccessful && response.data != null) {
      final resData = response.data;

      try {
        return Employee.fromJson(resData!);
      } catch (e) {
        throw Exception(e);
      }
    } else {
      throw Exception(response.message);
    }
  }

  Future<List<Employee>> fetchEmployees() async {
    final response = await _api.fetchEmployees();
    if (response.isSuccessful && response.data != null) {
      final resData = response.data!['employees'];
      final employees = <Employee>[];
      List<dynamic>? resDataDecoded;

      try {
        resDataDecoded = json.decode(resData);
      } catch (e) {
        resDataDecoded = null;
        throw Exception(e);
      }

      if (resDataDecoded != null) {
        for (var employee in resDataDecoded) {
          try {
            final eee = Employee.fromJson(employee);
            employees.add(eee);
          } catch (e) {
            throw Exception(e);
          }
        }
      }

      return employees;
    } else {
      throw Exception(response.message);
    }
  }
}
