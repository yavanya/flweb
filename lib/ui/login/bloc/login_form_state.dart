part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default('') final String email,
    @Default('') final String pwd,
    @Default(true) final bool pwdObscured,
    @Default(false) final bool pwdValid,
    @Default(false) final bool emailValid,
  }) = _LoginFormState;
}
