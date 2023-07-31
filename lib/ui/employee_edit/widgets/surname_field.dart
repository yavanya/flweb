part of 'employee_form.dart';

class _SurnameField extends StatelessWidget {
  const _SurnameField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeFormBloc, EmployeeFormState>(
      buildWhen: (previous, current) =>
          previous.form.surname != current.form.surname,
      builder: (context, state) {
        final bloc = context.read<EmployeeFormBloc>();

        return SizedBox(
          height: 82,
          child: TextFormField(
            onChanged: (surname) {
              bloc.add(
                EmployeeFormEvent.surnameChangedEvent(surname),
              );
            },
            initialValue: state.form.surname,
            decoration: InputDecoration(
              labelText: 'Surname',
              errorText: state.form.surnameValid || state.form.surname.isEmpty
                  ? null
                  : 'Invalid Surname',
              errorBorder: KBorderStyles.textFieldBorderBlack.copyWith(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
              border: KBorderStyles.textFieldBorderBlack,
            ),
            keyboardType: TextInputType.name,
          ),
        );
      },
    );
  }
}
