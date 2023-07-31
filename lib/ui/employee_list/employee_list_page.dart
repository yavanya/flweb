import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flweb/ui/common_widgets/simple_loading_widget.dart';
import 'package:flweb/ui/employee_list/bloc/employee_list_bloc.dart';

import 'package:flweb/ui/employee_list/widgets/employee_list.dart';

class EmployeeListPage extends StatelessWidget {
  const EmployeeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmployeeListBloc>(
      create: (_) => EmployeeListBloc(),
      child: BlocBuilder<EmployeeListBloc, EmployeeListState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.when(
            fetched: (employees) => EmployeeList(employees: employees),
            fetching: () => const SimpleLoadingWidget(),
          );
        },
      ),
    );
  }
}
