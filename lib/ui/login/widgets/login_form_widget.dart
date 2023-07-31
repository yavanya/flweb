library login_form;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flweb/constants/kborder_styles.dart';
import 'package:flweb/constants/ktext_styles.dart';
import 'package:flweb/ui/login/bloc/login_form_bloc.dart';
import 'package:flweb/ui/login/bloc/login_page_bloc.dart';

part 'email_field.dart';
part 'password_field.dart';
part 'submit_button.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final paddingWidth =
        ((size.width - 300) / 2 < 0 ? 0 : (size.width - 300) / 2).toDouble();

    return BlocBuilder<LoginFormBloc, LoginFormState>(
      buildWhen: (previous, current) =>
          previous.emailValid != current.emailValid ||
          (previous.email != current.email && current.emailValid) ||
          previous.pwdValid != current.pwdValid ||
          (previous.pwd != current.pwd && current.pwdValid),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Login')),
          body: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingWidth),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const _EmailField(),
                  const _PasswordField(),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: _SubmitButton(
                      isActive: state.emailValid && state.pwdValid,
                      email: state.email,
                      password: state.pwd,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
