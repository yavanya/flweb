part of 'employee_form.dart';

class _SaveButton extends StatelessWidget {
  final EmployeeForm? form;

  const _SaveButton({
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeFormPageBloc, EmployeeFormPageState>(
      buildWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        final bloc = context.read<EmployeeFormPageBloc>();
        return SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onPressed: form != null
                ? () async {
                    final res = await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Save Employee?'),
                          actionsAlignment: MainAxisAlignment.center,
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: const Text('No'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context, true);
                              },
                              child: const Text('Yes'),
                            ),
                          ],
                        );
                      },
                    );

                    if (res != null && res) {
                      bloc.add(
                        EmployeeFormPageEvent.saveSubmitted(form!),
                      );
                    }
                  }
                : null,
            child: const Text(
              'Save',
              style: KTextStyles.standartButton,
            ),
          ),
        );
      },
    );
  }
}
