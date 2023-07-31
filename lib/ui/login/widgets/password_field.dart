part of 'login_form_widget.dart';

class _PasswordField extends StatelessWidget {
  const _PasswordField();

  @override
  Widget build(BuildContext context) {
    final loginFormBloc = context.read<LoginFormBloc>();

    return BlocBuilder<LoginFormBloc, LoginFormState>(
      buildWhen: (previous, current) =>
          previous.pwd != current.pwd ||
          previous.pwdObscured != current.pwdObscured,
      builder: (context, state) {
        return SizedBox(
          height: 82,
          child: TextFormField(
            onChanged: (pwd) =>
                loginFormBloc.add(LoginFormEvent.passwordChanged(pwd)),
            decoration: InputDecoration(
              labelText: 'Password',
              errorText: state.pwdValid || state.pwd.isEmpty
                  ? null
                  : 'Invalid password',
              errorBorder: KBorderStyles.textFieldBorderBlack.copyWith(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
              border: KBorderStyles.textFieldBorderBlack,
              suffixIcon: IconButton(
                icon: Icon(
                  state.pwdObscured ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () =>
                    loginFormBloc.add(const LoginFormEvent.pwdObscureToggle()),
              ),
            ),
            obscureText: state.pwdObscured,
            keyboardType: TextInputType.visiblePassword,
          ),
        );
      },
    );
  }
}
