part of 'employee_list_bloc.dart';

@freezed
class EmployeeListState with _$EmployeeListState {
  const factory EmployeeListState.fetching() = _Fetching;

  const factory EmployeeListState.fetched(
      {required final List<Employee> employees}) = _Fetched;
}
