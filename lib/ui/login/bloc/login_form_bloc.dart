import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';
part 'login_form_bloc.freezed.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc()
      : super(
          const _LoginFormState(),
        ) {
    on<LoginFormEvent>(
      _eventHandler,
    );
  }

  FutureOr<void> _eventHandler(
      LoginFormEvent event, Emitter<LoginFormState> emit) {
    event.when(
      emailChanged: (email) {
        emit(state.copyWith(
          email: email,
          emailValid: _emailValidator(email),
        ));
      },
      passwordChanged: (password) {
        emit(state.copyWith(
          pwd: password,
          pwdValid: _passwordValidator(password),
        ));
      },
      pwdObscureToggle: () {
        emit(state.copyWith(
          pwdObscured: !state.pwdObscured,
        ));
      },
    );
  }

  bool _passwordValidator(String value) {
    final passwordRegExp = RegExp(r'^[a-zA-Z0-9]{8,16}$');

    if (value.isEmpty || !passwordRegExp.hasMatch(value)) {
      return false;
    }

    return true;
  }

  bool _emailValidator(String value) {
    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]{2,10}$');

    if (value.isEmpty || !emailRegExp.hasMatch(value)) {
      return false;
    }

    return true;
  }
}
