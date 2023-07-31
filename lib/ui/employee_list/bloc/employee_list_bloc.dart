import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import 'package:flweb/models/employee/employee.dart';
import 'package:flweb/repository/services/employee_service.dart';

part 'employee_list_event.dart';
part 'employee_list_state.dart';
part 'employee_list_bloc.freezed.dart';

class EmployeeListBloc extends Bloc<EmployeeListEvent, EmployeeListState> {
  final employeeService = GetIt.I<EmployeeService>();

  EmployeeListBloc()
      : super(
          const EmployeeListState.fetching(),
        ) {
    on<EmployeeListEvent>(_eventHandler);

    add(const EmployeeListEvent.initial());
  }

  Future<void> _eventHandler(
      EmployeeListEvent event, Emitter<EmployeeListState> emit) async {
    event.when(
      initial: () async {
        emit(const EmployeeListState.fetching());
        final employees = await employeeService.fetchEmployees();
        add(EmployeeListEvent.fetched(employees: employees));
      },
      fetched: (employees) {
        emit(EmployeeListState.fetched(employees: employees));
      },
    );
  }
}
