part of 'employee_form_bloc.dart';

@freezed
class EmployeeFormEvent with _$EmployeeFormEvent {
  const factory EmployeeFormEvent.nameChangedEvent(String name) = _NameChanged;

  const factory EmployeeFormEvent.surnameChangedEvent(String surname) =
      _SurnameChanged;

  const factory EmployeeFormEvent.patronymicChangedEvent(String patronymic) =
      _PatronymicChanged;

  const factory EmployeeFormEvent.emailChangedEvent(String email) =
      _EmailChanged;

  const factory EmployeeFormEvent.emailObscureToggleEvent() =
      _EmailObscureToggle;

  const factory EmployeeFormEvent.phoneChangedEvent(String pwd) = _PhoneChanged;

  const factory EmployeeFormEvent.phoneObscureToggleEvent() =
      _PhoneObscureToggle;

  const factory EmployeeFormEvent.birthDateChangedEvent(String date) =
      _BirthDateChanged;

  const factory EmployeeFormEvent.commentChangedEvent(String pwd) =
      _CommentChanged;

  const factory EmployeeFormEvent.fetchingDraftEvent() = _FetchingDraft;

  const factory EmployeeFormEvent.fetchedDraftEvent(EmployeeForm draft) =
      _FetchedDraft;
}
