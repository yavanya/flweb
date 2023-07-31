part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.emailChanged(String email) = _EmailChanged;

  const factory LoginFormEvent.passwordChanged(String pwd) =
      _PasswordChanged;

  const factory LoginFormEvent.pwdObscureToggle() = _PwdObscureToggle;

}
