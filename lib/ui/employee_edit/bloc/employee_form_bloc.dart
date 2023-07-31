import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flweb/repository/services/employee_service.dart';
import 'package:flweb/repository/services/storage_service.dart';
import 'package:flweb/models/employee/employee_form.dart';

part 'employee_form_event.dart';
part 'employee_form_state.dart';
part 'employee_form_bloc.freezed.dart';

class EmployeeFormBloc extends Bloc<EmployeeFormEvent, EmployeeFormState> {
  final String employeeID;

  final birthDateController = TextEditingController();
  final _storage = GetIt.I.get<StorageService>();

  EmployeeFormBloc({required this.employeeID})
      : super(const EmployeeFormState.fetching(form: EmployeeForm())) {
    on<EmployeeFormEvent>(_eventHandler);

    add(const EmployeeFormEvent.fetchingDraftEvent());
  }

  FutureOr<void> _eventHandler(event, emit) {
    event.when(
      birthDateChangedEvent: (String date) {
        birthDateController.text = date.split('T').first;
        final birthDate = DateTime.parse(date);
        emit(
          EmployeeFormState.form(
              form: state.form.copyWith(birthDate: birthDate)),
        );
      },
      commentChangedEvent: (String pwd) {
        emit(
          EmployeeFormState.form(form: state.form.copyWith(comment: pwd)),
        );
      },
      emailChangedEvent: (String email) {
        emit(
          EmployeeFormState.form(form: state.form.copyWith(email: email)),
        );
      },
      emailObscureToggleEvent: () {
        emit(
          EmployeeFormState.form(
              form:
                  state.form.copyWith(emailObscure: !state.form.emailObscure)),
        );
      },
      fetchedDraftEvent: (EmployeeForm draft) {
        emit(EmployeeFormState.form(form: draft));
      },
      fetchingDraftEvent: () async {
        if (employeeID.isNotEmpty && employeeID != 'new') {
          final employee =
              await GetIt.I<EmployeeService>().fetchEmployee(employeeID);

          final employeeForm = EmployeeForm.fromJson(employee.toJson());
          final event = EmployeeFormEvent.fetchedDraftEvent(employeeForm);

          if (employeeForm.birthDate != null) {
            birthDateController.text = dateFormat(employeeForm.birthDate!);
          }

          add(event);
        } else {
          final draft = await _storage.getString('draft');
          final draftDecoded = json.decode(draft);
          var employeeForm =
              EmployeeForm.fromJson(draftDecoded).copyWith(id: 'new');

          final event = EmployeeFormEvent.fetchedDraftEvent(employeeForm);

          if (employeeForm.birthDate != null && employeeForm.birthDateValid) {
            birthDateController.text = dateFormat(employeeForm.birthDate!);
          }

          add(event);
        }
      },
      nameChangedEvent: (String name) {
        emit(
          EmployeeFormState.form(form: state.form.copyWith(name: name)),
        );
      },
      surnameChangedEvent: (String surname) {
        emit(
          EmployeeFormState.form(form: state.form.copyWith(surname: surname)),
        );
      },
      patronymicChangedEvent: (String patronymic) {
        emit(
          EmployeeFormState.form(
              form: state.form.copyWith(patronymic: patronymic)),
        );
      },
      phoneChangedEvent: (String pwd) {
        emit(
          EmployeeFormState.form(form: state.form.copyWith(phone: pwd)),
        );
      },
      phoneObscureToggleEvent: () {
        emit(
          EmployeeFormState.form(
              form:
                  state.form.copyWith(phoneObscure: !state.form.phoneObscure)),
        );
      },
    );

    if ((event is _NameChanged ||
            event is _SurnameChanged ||
            event is _PatronymicChanged ||
            event is _PhoneChanged ||
            event is _EmailChanged ||
            event is _BirthDateChanged ||
            event is _CommentChanged) &&
        employeeID == 'new') {
      final map = state.form.toJson();
      final encoded = json.encode(map);
      _storage.debounceHandler('draft', encoded);
    }
  }

  String dateFormat(DateTime date) {
    return date.toIso8601String().split('T').first;
  }
}
