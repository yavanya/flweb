part of 'employee_form.dart';

class _PatronymicField extends StatelessWidget {
  const _PatronymicField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeFormBloc, EmployeeFormState>(
      buildWhen: (previous, current) =>
          previous.form.patronymic != current.form.patronymic,
      builder: (context, state) {
        final bloc = context.read<EmployeeFormBloc>();

        return SizedBox(
          height: 82,
          child: TextFormField(
            onChanged: (patronymic) {
              bloc.add(
                EmployeeFormEvent.patronymicChangedEvent(patronymic),
              );
            },
            initialValue: state.form.patronymic,
            decoration: InputDecoration(
              labelText: 'Patronymic',
              errorText:
                  state.form.patronymicValid || state.form.patronymic.isEmpty
                      ? null
                      : 'Invalid Patronymic',
              errorBorder: KBorderStyles.textFieldBorderBlack.copyWith(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
              border: KBorderStyles.textFieldBorderBlack,
            ),
          ),
        );
      },
    );
  }
}
