part of 'login_form_widget.dart';

class _EmailField extends StatelessWidget {
  const _EmailField();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginFormBloc>();

    return BlocBuilder<LoginFormBloc, LoginFormState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return SizedBox(
          height: 82,
          child: TextFormField(
            onChanged: (email) => bloc.add(LoginFormEvent.emailChanged(email)),
            decoration: InputDecoration(
              labelText: 'Email',
              border: KBorderStyles.textFieldBorderBlack,
              errorText: state.emailValid || state.email.isEmpty
                  ? null
                  : 'Invalid Email',
              errorBorder: KBorderStyles.textFieldBorderBlack.copyWith(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        );
      },
    );
  }
}
