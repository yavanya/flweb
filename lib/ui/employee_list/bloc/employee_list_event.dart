part of 'employee_list_bloc.dart';

@freezed
class EmployeeListEvent with _$EmployeeListEvent {
  const factory EmployeeListEvent.initial() = _Initial;

  const factory EmployeeListEvent.fetched({required List<Employee> employees}) =
      _FetchedEmployees;
}
