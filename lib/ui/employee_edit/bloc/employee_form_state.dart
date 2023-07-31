part of 'employee_form_bloc.dart';

@freezed
class EmployeeFormState with _$EmployeeFormState {
  const factory EmployeeFormState.form({
    required final EmployeeForm form,
  }) = _EmployeeFormStateForm;

  const factory EmployeeFormState.fetching({
    required final EmployeeForm form,
  }) = _EmployeeFormStateFetching;

  const factory EmployeeFormState.deleted({
    required final EmployeeForm form,
  }) = _EmployeeFormStateDeleted;
}
