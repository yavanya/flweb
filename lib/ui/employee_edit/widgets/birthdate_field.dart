part of 'employee_form.dart';

class _BirthDateField extends StatefulWidget {
  const _BirthDateField();

  @override
  State<_BirthDateField> createState() => _BirthDateFieldState();
}

class _BirthDateFieldState extends State<_BirthDateField> {
  TextEditingController? controller;

  @override
  dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeFormBloc, EmployeeFormState>(
      buildWhen: (previous, current) =>
          previous.form.birthDate != current.form.birthDate,
      builder: (context, state) {
        final bloc = context.read<EmployeeFormBloc>();
        controller ??= bloc.birthDateController;

        return SizedBox(
          height: 82,
          child: TextField(
            controller: bloc.birthDateController,
            readOnly: true,
            onTap: () async {
              final dt = await showDatePicker(
                context: context,
                initialDate: DateTime.now().subtract(
                  const Duration(
                    days: 365 * 25,
                  ),
                ),
                firstDate: DateTime(1900, 1),
                lastDate: DateTime(
                  DateTime.now().year,
                  DateTime.now().month,
                  DateTime.now().day,
                ),
              );

              if (dt != null) {
                bloc.add(
                  EmployeeFormEvent.birthDateChangedEvent(dt.toIso8601String()),
                );
              }
            },
            onChanged: (birthDate) {
              bloc.add(
                EmployeeFormEvent.birthDateChangedEvent(birthDate),
              );
            },
            decoration: InputDecoration(
              labelText: 'BirthDate',
              errorText:
                  state.form.birthDate == null || state.form.birthDateValid
                      ? null
                      : 'Invalid BirthDate',
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
