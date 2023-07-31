// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_form_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeFormPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeForm form) saveSubmitted,
    required TResult Function() saveDone,
    required TResult Function(String employeeID) deleteSubmitted,
    required TResult Function() deleteDone,
    required TResult Function(EmployeeForm form) updateSubmitted,
    required TResult Function() updateDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeForm form)? saveSubmitted,
    TResult? Function()? saveDone,
    TResult? Function(String employeeID)? deleteSubmitted,
    TResult? Function()? deleteDone,
    TResult? Function(EmployeeForm form)? updateSubmitted,
    TResult? Function()? updateDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeForm form)? saveSubmitted,
    TResult Function()? saveDone,
    TResult Function(String employeeID)? deleteSubmitted,
    TResult Function()? deleteDone,
    TResult Function(EmployeeForm form)? updateSubmitted,
    TResult Function()? updateDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSubmitted value) saveSubmitted,
    required TResult Function(_SaveDone value) saveDone,
    required TResult Function(_DeleteSubmitted value) deleteSubmitted,
    required TResult Function(_DeleteDone value) deleteDone,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
    required TResult Function(_UpdateDone value) updateDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSubmitted value)? saveSubmitted,
    TResult? Function(_SaveDone value)? saveDone,
    TResult? Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult? Function(_DeleteDone value)? deleteDone,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
    TResult? Function(_UpdateDone value)? updateDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSubmitted value)? saveSubmitted,
    TResult Function(_SaveDone value)? saveDone,
    TResult Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult Function(_DeleteDone value)? deleteDone,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    TResult Function(_UpdateDone value)? updateDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeFormPageEventCopyWith<$Res> {
  factory $EmployeeFormPageEventCopyWith(EmployeeFormPageEvent value,
          $Res Function(EmployeeFormPageEvent) then) =
      _$EmployeeFormPageEventCopyWithImpl<$Res, EmployeeFormPageEvent>;
}

/// @nodoc
class _$EmployeeFormPageEventCopyWithImpl<$Res,
        $Val extends EmployeeFormPageEvent>
    implements $EmployeeFormPageEventCopyWith<$Res> {
  _$EmployeeFormPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SaveSubmittedCopyWith<$Res> {
  factory _$$_SaveSubmittedCopyWith(
          _$_SaveSubmitted value, $Res Function(_$_SaveSubmitted) then) =
      __$$_SaveSubmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeForm form});

  $EmployeeFormCopyWith<$Res> get form;
}

/// @nodoc
class __$$_SaveSubmittedCopyWithImpl<$Res>
    extends _$EmployeeFormPageEventCopyWithImpl<$Res, _$_SaveSubmitted>
    implements _$$_SaveSubmittedCopyWith<$Res> {
  __$$_SaveSubmittedCopyWithImpl(
      _$_SaveSubmitted _value, $Res Function(_$_SaveSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_$_SaveSubmitted(
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as EmployeeForm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeFormCopyWith<$Res> get form {
    return $EmployeeFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

/// @nodoc

class _$_SaveSubmitted implements _SaveSubmitted {
  const _$_SaveSubmitted(this.form);

  @override
  final EmployeeForm form;

  @override
  String toString() {
    return 'EmployeeFormPageEvent.saveSubmitted(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveSubmitted &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveSubmittedCopyWith<_$_SaveSubmitted> get copyWith =>
      __$$_SaveSubmittedCopyWithImpl<_$_SaveSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeForm form) saveSubmitted,
    required TResult Function() saveDone,
    required TResult Function(String employeeID) deleteSubmitted,
    required TResult Function() deleteDone,
    required TResult Function(EmployeeForm form) updateSubmitted,
    required TResult Function() updateDone,
  }) {
    return saveSubmitted(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeForm form)? saveSubmitted,
    TResult? Function()? saveDone,
    TResult? Function(String employeeID)? deleteSubmitted,
    TResult? Function()? deleteDone,
    TResult? Function(EmployeeForm form)? updateSubmitted,
    TResult? Function()? updateDone,
  }) {
    return saveSubmitted?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeForm form)? saveSubmitted,
    TResult Function()? saveDone,
    TResult Function(String employeeID)? deleteSubmitted,
    TResult Function()? deleteDone,
    TResult Function(EmployeeForm form)? updateSubmitted,
    TResult Function()? updateDone,
    required TResult orElse(),
  }) {
    if (saveSubmitted != null) {
      return saveSubmitted(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSubmitted value) saveSubmitted,
    required TResult Function(_SaveDone value) saveDone,
    required TResult Function(_DeleteSubmitted value) deleteSubmitted,
    required TResult Function(_DeleteDone value) deleteDone,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
    required TResult Function(_UpdateDone value) updateDone,
  }) {
    return saveSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSubmitted value)? saveSubmitted,
    TResult? Function(_SaveDone value)? saveDone,
    TResult? Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult? Function(_DeleteDone value)? deleteDone,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
    TResult? Function(_UpdateDone value)? updateDone,
  }) {
    return saveSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSubmitted value)? saveSubmitted,
    TResult Function(_SaveDone value)? saveDone,
    TResult Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult Function(_DeleteDone value)? deleteDone,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    TResult Function(_UpdateDone value)? updateDone,
    required TResult orElse(),
  }) {
    if (saveSubmitted != null) {
      return saveSubmitted(this);
    }
    return orElse();
  }
}

abstract class _SaveSubmitted implements EmployeeFormPageEvent {
  const factory _SaveSubmitted(final EmployeeForm form) = _$_SaveSubmitted;

  EmployeeForm get form;
  @JsonKey(ignore: true)
  _$$_SaveSubmittedCopyWith<_$_SaveSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveDoneCopyWith<$Res> {
  factory _$$_SaveDoneCopyWith(
          _$_SaveDone value, $Res Function(_$_SaveDone) then) =
      __$$_SaveDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveDoneCopyWithImpl<$Res>
    extends _$EmployeeFormPageEventCopyWithImpl<$Res, _$_SaveDone>
    implements _$$_SaveDoneCopyWith<$Res> {
  __$$_SaveDoneCopyWithImpl(
      _$_SaveDone _value, $Res Function(_$_SaveDone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveDone implements _SaveDone {
  const _$_SaveDone();

  @override
  String toString() {
    return 'EmployeeFormPageEvent.saveDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeForm form) saveSubmitted,
    required TResult Function() saveDone,
    required TResult Function(String employeeID) deleteSubmitted,
    required TResult Function() deleteDone,
    required TResult Function(EmployeeForm form) updateSubmitted,
    required TResult Function() updateDone,
  }) {
    return saveDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeForm form)? saveSubmitted,
    TResult? Function()? saveDone,
    TResult? Function(String employeeID)? deleteSubmitted,
    TResult? Function()? deleteDone,
    TResult? Function(EmployeeForm form)? updateSubmitted,
    TResult? Function()? updateDone,
  }) {
    return saveDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeForm form)? saveSubmitted,
    TResult Function()? saveDone,
    TResult Function(String employeeID)? deleteSubmitted,
    TResult Function()? deleteDone,
    TResult Function(EmployeeForm form)? updateSubmitted,
    TResult Function()? updateDone,
    required TResult orElse(),
  }) {
    if (saveDone != null) {
      return saveDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSubmitted value) saveSubmitted,
    required TResult Function(_SaveDone value) saveDone,
    required TResult Function(_DeleteSubmitted value) deleteSubmitted,
    required TResult Function(_DeleteDone value) deleteDone,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
    required TResult Function(_UpdateDone value) updateDone,
  }) {
    return saveDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSubmitted value)? saveSubmitted,
    TResult? Function(_SaveDone value)? saveDone,
    TResult? Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult? Function(_DeleteDone value)? deleteDone,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
    TResult? Function(_UpdateDone value)? updateDone,
  }) {
    return saveDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSubmitted value)? saveSubmitted,
    TResult Function(_SaveDone value)? saveDone,
    TResult Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult Function(_DeleteDone value)? deleteDone,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    TResult Function(_UpdateDone value)? updateDone,
    required TResult orElse(),
  }) {
    if (saveDone != null) {
      return saveDone(this);
    }
    return orElse();
  }
}

abstract class _SaveDone implements EmployeeFormPageEvent {
  const factory _SaveDone() = _$_SaveDone;
}

/// @nodoc
abstract class _$$_DeleteSubmittedCopyWith<$Res> {
  factory _$$_DeleteSubmittedCopyWith(
          _$_DeleteSubmitted value, $Res Function(_$_DeleteSubmitted) then) =
      __$$_DeleteSubmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({String employeeID});
}

/// @nodoc
class __$$_DeleteSubmittedCopyWithImpl<$Res>
    extends _$EmployeeFormPageEventCopyWithImpl<$Res, _$_DeleteSubmitted>
    implements _$$_DeleteSubmittedCopyWith<$Res> {
  __$$_DeleteSubmittedCopyWithImpl(
      _$_DeleteSubmitted _value, $Res Function(_$_DeleteSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeID = null,
  }) {
    return _then(_$_DeleteSubmitted(
      null == employeeID
          ? _value.employeeID
          : employeeID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteSubmitted implements _DeleteSubmitted {
  const _$_DeleteSubmitted(this.employeeID);

  @override
  final String employeeID;

  @override
  String toString() {
    return 'EmployeeFormPageEvent.deleteSubmitted(employeeID: $employeeID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSubmitted &&
            (identical(other.employeeID, employeeID) ||
                other.employeeID == employeeID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteSubmittedCopyWith<_$_DeleteSubmitted> get copyWith =>
      __$$_DeleteSubmittedCopyWithImpl<_$_DeleteSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeForm form) saveSubmitted,
    required TResult Function() saveDone,
    required TResult Function(String employeeID) deleteSubmitted,
    required TResult Function() deleteDone,
    required TResult Function(EmployeeForm form) updateSubmitted,
    required TResult Function() updateDone,
  }) {
    return deleteSubmitted(employeeID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeForm form)? saveSubmitted,
    TResult? Function()? saveDone,
    TResult? Function(String employeeID)? deleteSubmitted,
    TResult? Function()? deleteDone,
    TResult? Function(EmployeeForm form)? updateSubmitted,
    TResult? Function()? updateDone,
  }) {
    return deleteSubmitted?.call(employeeID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeForm form)? saveSubmitted,
    TResult Function()? saveDone,
    TResult Function(String employeeID)? deleteSubmitted,
    TResult Function()? deleteDone,
    TResult Function(EmployeeForm form)? updateSubmitted,
    TResult Function()? updateDone,
    required TResult orElse(),
  }) {
    if (deleteSubmitted != null) {
      return deleteSubmitted(employeeID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSubmitted value) saveSubmitted,
    required TResult Function(_SaveDone value) saveDone,
    required TResult Function(_DeleteSubmitted value) deleteSubmitted,
    required TResult Function(_DeleteDone value) deleteDone,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
    required TResult Function(_UpdateDone value) updateDone,
  }) {
    return deleteSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSubmitted value)? saveSubmitted,
    TResult? Function(_SaveDone value)? saveDone,
    TResult? Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult? Function(_DeleteDone value)? deleteDone,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
    TResult? Function(_UpdateDone value)? updateDone,
  }) {
    return deleteSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSubmitted value)? saveSubmitted,
    TResult Function(_SaveDone value)? saveDone,
    TResult Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult Function(_DeleteDone value)? deleteDone,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    TResult Function(_UpdateDone value)? updateDone,
    required TResult orElse(),
  }) {
    if (deleteSubmitted != null) {
      return deleteSubmitted(this);
    }
    return orElse();
  }
}

abstract class _DeleteSubmitted implements EmployeeFormPageEvent {
  const factory _DeleteSubmitted(final String employeeID) = _$_DeleteSubmitted;

  String get employeeID;
  @JsonKey(ignore: true)
  _$$_DeleteSubmittedCopyWith<_$_DeleteSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteDoneCopyWith<$Res> {
  factory _$$_DeleteDoneCopyWith(
          _$_DeleteDone value, $Res Function(_$_DeleteDone) then) =
      __$$_DeleteDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteDoneCopyWithImpl<$Res>
    extends _$EmployeeFormPageEventCopyWithImpl<$Res, _$_DeleteDone>
    implements _$$_DeleteDoneCopyWith<$Res> {
  __$$_DeleteDoneCopyWithImpl(
      _$_DeleteDone _value, $Res Function(_$_DeleteDone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteDone implements _DeleteDone {
  const _$_DeleteDone();

  @override
  String toString() {
    return 'EmployeeFormPageEvent.deleteDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeForm form) saveSubmitted,
    required TResult Function() saveDone,
    required TResult Function(String employeeID) deleteSubmitted,
    required TResult Function() deleteDone,
    required TResult Function(EmployeeForm form) updateSubmitted,
    required TResult Function() updateDone,
  }) {
    return deleteDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeForm form)? saveSubmitted,
    TResult? Function()? saveDone,
    TResult? Function(String employeeID)? deleteSubmitted,
    TResult? Function()? deleteDone,
    TResult? Function(EmployeeForm form)? updateSubmitted,
    TResult? Function()? updateDone,
  }) {
    return deleteDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeForm form)? saveSubmitted,
    TResult Function()? saveDone,
    TResult Function(String employeeID)? deleteSubmitted,
    TResult Function()? deleteDone,
    TResult Function(EmployeeForm form)? updateSubmitted,
    TResult Function()? updateDone,
    required TResult orElse(),
  }) {
    if (deleteDone != null) {
      return deleteDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSubmitted value) saveSubmitted,
    required TResult Function(_SaveDone value) saveDone,
    required TResult Function(_DeleteSubmitted value) deleteSubmitted,
    required TResult Function(_DeleteDone value) deleteDone,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
    required TResult Function(_UpdateDone value) updateDone,
  }) {
    return deleteDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSubmitted value)? saveSubmitted,
    TResult? Function(_SaveDone value)? saveDone,
    TResult? Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult? Function(_DeleteDone value)? deleteDone,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
    TResult? Function(_UpdateDone value)? updateDone,
  }) {
    return deleteDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSubmitted value)? saveSubmitted,
    TResult Function(_SaveDone value)? saveDone,
    TResult Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult Function(_DeleteDone value)? deleteDone,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    TResult Function(_UpdateDone value)? updateDone,
    required TResult orElse(),
  }) {
    if (deleteDone != null) {
      return deleteDone(this);
    }
    return orElse();
  }
}

abstract class _DeleteDone implements EmployeeFormPageEvent {
  const factory _DeleteDone() = _$_DeleteDone;
}

/// @nodoc
abstract class _$$_UpdateSubmittedCopyWith<$Res> {
  factory _$$_UpdateSubmittedCopyWith(
          _$_UpdateSubmitted value, $Res Function(_$_UpdateSubmitted) then) =
      __$$_UpdateSubmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeForm form});

  $EmployeeFormCopyWith<$Res> get form;
}

/// @nodoc
class __$$_UpdateSubmittedCopyWithImpl<$Res>
    extends _$EmployeeFormPageEventCopyWithImpl<$Res, _$_UpdateSubmitted>
    implements _$$_UpdateSubmittedCopyWith<$Res> {
  __$$_UpdateSubmittedCopyWithImpl(
      _$_UpdateSubmitted _value, $Res Function(_$_UpdateSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_$_UpdateSubmitted(
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as EmployeeForm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeFormCopyWith<$Res> get form {
    return $EmployeeFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value));
    });
  }
}

/// @nodoc

class _$_UpdateSubmitted implements _UpdateSubmitted {
  const _$_UpdateSubmitted(this.form);

  @override
  final EmployeeForm form;

  @override
  String toString() {
    return 'EmployeeFormPageEvent.updateSubmitted(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSubmitted &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSubmittedCopyWith<_$_UpdateSubmitted> get copyWith =>
      __$$_UpdateSubmittedCopyWithImpl<_$_UpdateSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeForm form) saveSubmitted,
    required TResult Function() saveDone,
    required TResult Function(String employeeID) deleteSubmitted,
    required TResult Function() deleteDone,
    required TResult Function(EmployeeForm form) updateSubmitted,
    required TResult Function() updateDone,
  }) {
    return updateSubmitted(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeForm form)? saveSubmitted,
    TResult? Function()? saveDone,
    TResult? Function(String employeeID)? deleteSubmitted,
    TResult? Function()? deleteDone,
    TResult? Function(EmployeeForm form)? updateSubmitted,
    TResult? Function()? updateDone,
  }) {
    return updateSubmitted?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeForm form)? saveSubmitted,
    TResult Function()? saveDone,
    TResult Function(String employeeID)? deleteSubmitted,
    TResult Function()? deleteDone,
    TResult Function(EmployeeForm form)? updateSubmitted,
    TResult Function()? updateDone,
    required TResult orElse(),
  }) {
    if (updateSubmitted != null) {
      return updateSubmitted(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSubmitted value) saveSubmitted,
    required TResult Function(_SaveDone value) saveDone,
    required TResult Function(_DeleteSubmitted value) deleteSubmitted,
    required TResult Function(_DeleteDone value) deleteDone,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
    required TResult Function(_UpdateDone value) updateDone,
  }) {
    return updateSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSubmitted value)? saveSubmitted,
    TResult? Function(_SaveDone value)? saveDone,
    TResult? Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult? Function(_DeleteDone value)? deleteDone,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
    TResult? Function(_UpdateDone value)? updateDone,
  }) {
    return updateSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSubmitted value)? saveSubmitted,
    TResult Function(_SaveDone value)? saveDone,
    TResult Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult Function(_DeleteDone value)? deleteDone,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    TResult Function(_UpdateDone value)? updateDone,
    required TResult orElse(),
  }) {
    if (updateSubmitted != null) {
      return updateSubmitted(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubmitted implements EmployeeFormPageEvent {
  const factory _UpdateSubmitted(final EmployeeForm form) = _$_UpdateSubmitted;

  EmployeeForm get form;
  @JsonKey(ignore: true)
  _$$_UpdateSubmittedCopyWith<_$_UpdateSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateDoneCopyWith<$Res> {
  factory _$$_UpdateDoneCopyWith(
          _$_UpdateDone value, $Res Function(_$_UpdateDone) then) =
      __$$_UpdateDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateDoneCopyWithImpl<$Res>
    extends _$EmployeeFormPageEventCopyWithImpl<$Res, _$_UpdateDone>
    implements _$$_UpdateDoneCopyWith<$Res> {
  __$$_UpdateDoneCopyWithImpl(
      _$_UpdateDone _value, $Res Function(_$_UpdateDone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateDone implements _UpdateDone {
  const _$_UpdateDone();

  @override
  String toString() {
    return 'EmployeeFormPageEvent.updateDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeForm form) saveSubmitted,
    required TResult Function() saveDone,
    required TResult Function(String employeeID) deleteSubmitted,
    required TResult Function() deleteDone,
    required TResult Function(EmployeeForm form) updateSubmitted,
    required TResult Function() updateDone,
  }) {
    return updateDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeForm form)? saveSubmitted,
    TResult? Function()? saveDone,
    TResult? Function(String employeeID)? deleteSubmitted,
    TResult? Function()? deleteDone,
    TResult? Function(EmployeeForm form)? updateSubmitted,
    TResult? Function()? updateDone,
  }) {
    return updateDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeForm form)? saveSubmitted,
    TResult Function()? saveDone,
    TResult Function(String employeeID)? deleteSubmitted,
    TResult Function()? deleteDone,
    TResult Function(EmployeeForm form)? updateSubmitted,
    TResult Function()? updateDone,
    required TResult orElse(),
  }) {
    if (updateDone != null) {
      return updateDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSubmitted value) saveSubmitted,
    required TResult Function(_SaveDone value) saveDone,
    required TResult Function(_DeleteSubmitted value) deleteSubmitted,
    required TResult Function(_DeleteDone value) deleteDone,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
    required TResult Function(_UpdateDone value) updateDone,
  }) {
    return updateDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSubmitted value)? saveSubmitted,
    TResult? Function(_SaveDone value)? saveDone,
    TResult? Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult? Function(_DeleteDone value)? deleteDone,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
    TResult? Function(_UpdateDone value)? updateDone,
  }) {
    return updateDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSubmitted value)? saveSubmitted,
    TResult Function(_SaveDone value)? saveDone,
    TResult Function(_DeleteSubmitted value)? deleteSubmitted,
    TResult Function(_DeleteDone value)? deleteDone,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    TResult Function(_UpdateDone value)? updateDone,
    required TResult orElse(),
  }) {
    if (updateDone != null) {
      return updateDone(this);
    }
    return orElse();
  }
}

abstract class _UpdateDone implements EmployeeFormPageEvent {
  const factory _UpdateDone() = _$_UpdateDone;
}

/// @nodoc
mixin _$EmployeeFormPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function() deleting,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function()? deleting,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeFormPageStateCopyWith<$Res> {
  factory $EmployeeFormPageStateCopyWith(EmployeeFormPageState value,
          $Res Function(EmployeeFormPageState) then) =
      _$EmployeeFormPageStateCopyWithImpl<$Res, EmployeeFormPageState>;
}

/// @nodoc
class _$EmployeeFormPageStateCopyWithImpl<$Res,
        $Val extends EmployeeFormPageState>
    implements $EmployeeFormPageStateCopyWith<$Res> {
  _$EmployeeFormPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EmployeeFormPageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EmployeeFormPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function() deleting,
    required TResult Function() deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function()? deleting,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmployeeFormPageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FetchingCopyWith<$Res> {
  factory _$$_FetchingCopyWith(
          _$_Fetching value, $Res Function(_$_Fetching) then) =
      __$$_FetchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchingCopyWithImpl<$Res>
    extends _$EmployeeFormPageStateCopyWithImpl<$Res, _$_Fetching>
    implements _$$_FetchingCopyWith<$Res> {
  __$$_FetchingCopyWithImpl(
      _$_Fetching _value, $Res Function(_$_Fetching) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Fetching implements _Fetching {
  const _$_Fetching();

  @override
  String toString() {
    return 'EmployeeFormPageState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function() deleting,
    required TResult Function() deleted,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function()? deleting,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _Fetching implements EmployeeFormPageState {
  const factory _Fetching() = _$_Fetching;
}

/// @nodoc
abstract class _$$_SavingCopyWith<$Res> {
  factory _$$_SavingCopyWith(_$_Saving value, $Res Function(_$_Saving) then) =
      __$$_SavingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavingCopyWithImpl<$Res>
    extends _$EmployeeFormPageStateCopyWithImpl<$Res, _$_Saving>
    implements _$$_SavingCopyWith<$Res> {
  __$$_SavingCopyWithImpl(_$_Saving _value, $Res Function(_$_Saving) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saving implements _Saving {
  const _$_Saving();

  @override
  String toString() {
    return 'EmployeeFormPageState.saving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function() deleting,
    required TResult Function() deleted,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function()? deleting,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving implements EmployeeFormPageState {
  const factory _Saving() = _$_Saving;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$EmployeeFormPageStateCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'EmployeeFormPageState.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function() deleting,
    required TResult Function() deleted,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function()? deleting,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements EmployeeFormPageState {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$$_DeletingCopyWith<$Res> {
  factory _$$_DeletingCopyWith(
          _$_Deleting value, $Res Function(_$_Deleting) then) =
      __$$_DeletingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletingCopyWithImpl<$Res>
    extends _$EmployeeFormPageStateCopyWithImpl<$Res, _$_Deleting>
    implements _$$_DeletingCopyWith<$Res> {
  __$$_DeletingCopyWithImpl(
      _$_Deleting _value, $Res Function(_$_Deleting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Deleting implements _Deleting {
  const _$_Deleting();

  @override
  String toString() {
    return 'EmployeeFormPageState.deleting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Deleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function() deleting,
    required TResult Function() deleted,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
  }) {
    return deleting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function()? deleting,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class _Deleting implements EmployeeFormPageState {
  const factory _Deleting() = _$_Deleting;
}

/// @nodoc
abstract class _$$_DeletedCopyWith<$Res> {
  factory _$$_DeletedCopyWith(
          _$_Deleted value, $Res Function(_$_Deleted) then) =
      __$$_DeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletedCopyWithImpl<$Res>
    extends _$EmployeeFormPageStateCopyWithImpl<$Res, _$_Deleted>
    implements _$$_DeletedCopyWith<$Res> {
  __$$_DeletedCopyWithImpl(_$_Deleted _value, $Res Function(_$_Deleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted();

  @override
  String toString() {
    return 'EmployeeFormPageState.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Deleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function() saving,
    required TResult Function() saved,
    required TResult Function() deleting,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function()? saving,
    TResult? Function()? saved,
    TResult? Function()? deleting,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function()? saving,
    TResult Function()? saved,
    TResult Function()? deleting,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_Deleting value)? deleting,
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements EmployeeFormPageState {
  const factory _Deleted() = _$_Deleted;
}
