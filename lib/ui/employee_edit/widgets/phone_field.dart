part of 'employee_form.dart';

class _PhoneField extends StatelessWidget {
  const _PhoneField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeFormBloc, EmployeeFormState>(
      buildWhen: (previous, current) =>
          previous.form.phone != current.form.phone ||
          previous.form.phoneObscure != current.form.phoneObscure,
      builder: (context, state) {
        final bloc = context.read<EmployeeFormBloc>();

        return SizedBox(
          height: 82,
          child: TextFormField(
            onChanged: (phone) {
              bloc.add(
                EmployeeFormEvent.phoneChangedEvent(phone),
              );
            },
            initialValue: state.form.phone,
            decoration: InputDecoration(
              labelText: 'Phone',
              border: KBorderStyles.textFieldBorderBlack,
              errorText: state.form.phoneValid || state.form.phone.isEmpty
                  ? null
                  : 'Invalid Phone',
              errorBorder: KBorderStyles.textFieldBorderBlack.copyWith(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  state.form.phoneObscure
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: () =>
                    bloc.add(const EmployeeFormEvent.phoneObscureToggleEvent()),
              ),
            ),
            obscureText: state.form.phoneObscure,
            keyboardType: TextInputType.phone,
          ),
        );
      },
    );
  }
}
