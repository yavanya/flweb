// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhoneNumber _$$_PhoneNumberFromJson(Map<String, dynamic> json) =>
    _$_PhoneNumber(
      number: json['number'] as String? ?? '',
      type: $enumDecodeNullable(_$PhoneTypeEnumMap, json['type']) ??
          PhoneType.mobile,
    );

Map<String, dynamic> _$$_PhoneNumberToJson(_$_PhoneNumber instance) =>
    <String, dynamic>{
      'number': instance.number,
      'type': _$PhoneTypeEnumMap[instance.type]!,
    };

const _$PhoneTypeEnumMap = {
  PhoneType.mobile: 'mobile',
  PhoneType.landLine: 'landLine',
};
