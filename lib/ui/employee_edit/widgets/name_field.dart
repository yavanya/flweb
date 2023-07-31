part of 'employee_form.dart';

class _NameField extends StatelessWidget {
  const _NameField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeFormBloc, EmployeeFormState>(
      buildWhen: (previous, current) {
        return previous.form.name != current.form.name;
      },
      builder: (context, state) {
        final bloc = context.read<EmployeeFormBloc>();

        return SizedBox(
          height: 82,
          child: TextFormField(
            onChanged: (name) {
              bloc.add(
                EmployeeFormEvent.nameChangedEvent(name),
              );
            },
            initialValue: state.form.name,
            decoration: InputDecoration(
              labelText: 'Name',
              errorText: state.form.nameValid || state.form.name.isEmpty
                  ? null
                  : 'Invalid Name',
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
