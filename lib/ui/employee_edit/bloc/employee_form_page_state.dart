part of 'employee_form_page_bloc.dart';

@freezed
class EmployeeFormPageState with _$EmployeeFormPageState {
  const factory EmployeeFormPageState.initial() = _Initial;
  const factory EmployeeFormPageState.fetching() = _Fetching;
  const factory EmployeeFormPageState.saving() = _Saving;
  const factory EmployeeFormPageState.saved() = _Saved;
  const factory EmployeeFormPageState.deleting() = _Deleting;
  const factory EmployeeFormPageState.deleted() = _Deleted;
}
