import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flweb/models/enums/phone_type.dart';

part 'phone_number.freezed.dart';
part 'phone_number.g.dart';

@freezed
class PhoneNumber with _$PhoneNumber {
  const factory PhoneNumber({
    @Default('') final String number,
    @Default(PhoneType.mobile) final PhoneType type,
  }) = _PhoneNumber;

  factory PhoneNumber.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberFromJson(json);
}
