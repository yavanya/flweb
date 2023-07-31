part of 'employee_form_page_bloc.dart';

@freezed
class EmployeeFormPageEvent with _$EmployeeFormPageEvent {
  const factory EmployeeFormPageEvent.saveSubmitted(EmployeeForm form) =
      _SaveSubmitted;

  const factory EmployeeFormPageEvent.saveDone() = _SaveDone;

  const factory EmployeeFormPageEvent.deleteSubmitted(String employeeID) =
      _DeleteSubmitted;

  const factory EmployeeFormPageEvent.deleteDone() =
      _DeleteDone;

  const factory EmployeeFormPageEvent.updateSubmitted(EmployeeForm form) =
      _UpdateSubmitted;

  const factory EmployeeFormPageEvent.updateDone() =
      _UpdateDone;
}
