part of 'employee_form.dart';

class _EmailField extends StatelessWidget {
  const _EmailField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeFormBloc, EmployeeFormState>(
      buildWhen: (previous, current) =>
          previous.form.email != current.form.email ||
          previous.form.emailObscure != current.form.emailObscure,
      builder: (context, state) {
        final bloc = context.read<EmployeeFormBloc>();

        return SizedBox(
          height: 82,
          child: TextFormField(
            onChanged: (email) {
              bloc.add(
                EmployeeFormEvent.emailChangedEvent(email),
              );
            },
            initialValue: state.form.email,
            decoration: InputDecoration(
              labelText: 'Email',
              border: KBorderStyles.textFieldBorderBlack,
              errorText: state.form.emailValid || state.form.email.isEmpty
                  ? null
                  : 'Invalid Email',
              errorBorder: KBorderStyles.textFieldBorderBlack.copyWith(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  state.form.emailObscure
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: () =>
                    bloc.add(const EmployeeFormEvent.emailObscureToggleEvent()),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            obscureText: state.form.emailObscure,
          ),
        );
      },
    );
  }
}
