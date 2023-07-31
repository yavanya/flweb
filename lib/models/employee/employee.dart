import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class Employee with _$Employee {
  @Assert('name.length > 1 && name.length < 50', 'Name can be 2-50 characters')
  @Assert('surname.length > 1 && surname.length < 50',
      'Surname can be 2-50 characters')
  const factory Employee({
    required final String id,
    required final String name,
    required final String surname,
    @Default('') final String patronymic,
    @Default('') final String address,
    required final String phone,
    required final String email,
    required final DateTime? birthDate,
    @Default('') final String comment,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}
