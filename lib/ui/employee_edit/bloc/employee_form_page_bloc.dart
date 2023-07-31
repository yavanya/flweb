import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flweb/models/employee/employee_form.dart';
import 'package:get_it/get_it.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flweb/models/employee/employee.dart';
import 'package:flweb/repository/services/employee_service.dart';

part 'employee_form_page_event.dart';
part 'employee_form_page_state.dart';
part 'employee_form_page_bloc.freezed.dart';

class EmployeeFormPageBloc
    extends Bloc<EmployeeFormPageEvent, EmployeeFormPageState> {
  final _employeeService = GetIt.I.get<EmployeeService>();

  EmployeeFormPageBloc() : super(const EmployeeFormPageState.initial()) {
    on<EmployeeFormPageEvent>(_eventHandler);
  }

  FutureOr<void> _eventHandler(
      EmployeeFormPageEvent event, Emitter<EmployeeFormPageState> emit) {
    event.when(
      saveSubmitted: (EmployeeForm employee) async {
        await _employeeService.createEmployee(employee);
        add(const EmployeeFormPageEvent.saveDone());
      },
      saveDone: () {
        emit(const EmployeeFormPageState.saved());
      },
      deleteSubmitted: (String employeeID) async {
        await _employeeService.deleteEmployee(employeeID);
        add(const EmployeeFormPageEvent.deleteDone());
      },
      deleteDone: () {
        emit(const EmployeeFormPageState.deleted());
      },
      updateSubmitted: (EmployeeForm form) async {
        final formJson = form.toJson();
        final employee = Employee.fromJson(formJson);
        await _employeeService.updateEmployee(employee);
        add(const EmployeeFormPageEvent.updateDone());
      },
      updateDone: () {
        emit(const EmployeeFormPageState.saved());
      },
    );
  }
}
