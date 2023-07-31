import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flweb/ui/employee_edit/bloc/employee_form_bloc.dart';
import 'package:flweb/ui/employee_edit/bloc/employee_form_page_bloc.dart';
import 'package:flweb/ui/employee_edit/widgets/employee_form.dart';
import 'package:go_router/go_router.dart';

class EmployeeEditPage extends StatelessWidget {
  final String employeeID;

  const EmployeeEditPage({required this.employeeID, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EmployeeFormPageBloc>(
          create: (context) => EmployeeFormPageBloc(),
        ),
        BlocProvider<EmployeeFormBloc>(
          create: (context) => EmployeeFormBloc(employeeID: employeeID),
        ),
      ],
      child: BlocListener<EmployeeFormPageBloc, EmployeeFormPageState>(
        listenWhen: (previous, current) {
          return previous != current;
        },
        listener: (context, state) {
          state.maybeWhen(
            saved: () {
              context.go('/employees');
            },
            deleted: () {
              context.go('/employees');
            },
            orElse: () {},
          );
        },
        child: const EmployeeFormWidget(),
      ),
    );
  }
}
