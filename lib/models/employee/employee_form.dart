import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_form.freezed.dart';
part 'employee_form.g.dart';

@freezed
class EmployeeForm with _$EmployeeForm {
  const EmployeeForm._();

  const factory EmployeeForm({
    @Default('') final String id,
    @Default('') final String name,
    @Default('') final String surname,
    @Default('') final String patronymic,
    @Default('') final String address,
    @Default('') final String phone,
    @Default('') final String email,
    final DateTime? birthDate,
    @Default('') final String comment,
    @Default(false) final bool emailObscure,
    @Default(false) final bool phoneObscure,
  }) = _EmployeeForm;

  factory EmployeeForm.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFormFromJson(json);

  bool get emailValid => RegExp(
        r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$',
      ).hasMatch(email);

  bool get phoneValid => RegExp(
        r'^\+\d{11,11}$',
      ).hasMatch(phone);

  bool get nameValid => name.isNotEmpty && name.length > 2;
  bool get surnameValid => surname.isNotEmpty && surname.length > 2;
  bool get patronymicValid => patronymic.isNotEmpty && patronymic.length > 2;
  bool get addressValid => address.isNotEmpty && address.length > 5;
  bool get birthDateValid => birthDate != null;
  bool get commentValid => comment.isNotEmpty;

  bool get allValid =>
      nameValid &&
      surnameValid &&
      patronymicValid &&
      addressValid &&
      birthDateValid &&
      commentValid &&
      emailValid &&
      phoneValid;

  bool get minValid => nameValid && surnameValid && phoneValid && emailValid;
}
