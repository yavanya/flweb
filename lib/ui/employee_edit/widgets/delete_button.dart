part of 'employee_form.dart';

class _DeleteButton extends StatelessWidget {
  final String employeeID;
  const _DeleteButton({required this.employeeID});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeFormPageBloc, EmployeeFormPageState>(
      buildWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        final bloc = context.read<EmployeeFormPageBloc>();
        return SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              foregroundColor: Colors.red,
            ),
            onPressed: employeeID.isNotEmpty && employeeID != 'new'
                ? () async {
                    final res = await _getEmployeeDeleteConsent(context);

                    if (res != null && res) {
                      bloc.add(
                        EmployeeFormPageEvent.deleteSubmitted(employeeID),
                      );
                    }
                  }
                : null,
            child: const Text(
              'Delete',
              style: KTextStyles.standartButton,
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> _getEmployeeDeleteConsent(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete Employee?'),
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
  }
}
