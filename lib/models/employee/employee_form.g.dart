// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeForm _$$_EmployeeFormFromJson(Map<String, dynamic> json) =>
    _$_EmployeeForm(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      surname: json['surname'] as String? ?? '',
      patronymic: json['patronymic'] as String? ?? '',
      address: json['address'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      email: json['email'] as String? ?? '',
      birthDate: json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
      comment: json['comment'] as String? ?? '',
      emailObscure: json['email_obscure'] as bool? ?? false,
      phoneObscure: json['phone_obscure'] as bool? ?? false,
    );

Map<String, dynamic> _$$_EmployeeFormToJson(_$_EmployeeForm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'address': instance.address,
      'phone': instance.phone,
      'email': instance.email,
      'birth_date': instance.birthDate?.toIso8601String(),
      'comment': instance.comment,
      'email_obscure': instance.emailObscure,
      'phone_obscure': instance.phoneObscure,
    };
