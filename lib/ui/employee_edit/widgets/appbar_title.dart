part of 'employee_form.dart';

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeFormBloc, EmployeeFormState>(
        buildWhen: (previous, current) {
      return previous.form.id != current.form.id;
    }, builder: (context, state) {
      return state.form.id.isEmpty || state.form.id == 'new'
          ? const Text('Add Employee')
          : const Text('Edit Employee');
    });
  }
}
