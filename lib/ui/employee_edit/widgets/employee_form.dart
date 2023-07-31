library login_form;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flweb/constants/kborder_styles.dart';
import 'package:flweb/constants/ktext_styles.dart';
import 'package:flweb/models/employee/employee_form.dart';
import 'package:flweb/ui/common_widgets/logout_icon_button.dart';
import 'package:flweb/ui/common_widgets/simple_loading_widget.dart';
import 'package:flweb/ui/employee_edit/bloc/employee_form_bloc.dart';
import 'package:flweb/ui/employee_edit/bloc/employee_form_page_bloc.dart';
import 'package:go_router/go_router.dart';

part 'appbar_title.dart';
part 'name_field.dart';
part 'surname_field.dart';
part 'patronymic_field.dart';
part 'email_field.dart';
part 'phone_field.dart';
part 'birthdate_field.dart';
part 'comment_field.dart';
part 'delete_button.dart';
part 'save_button.dart';
part 'update_button.dart';

class EmployeeFormWidget extends StatelessWidget {
  const EmployeeFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final paddingWidth =
        ((size.width - 300) / 3 < 0 ? 0 : (size.width - 300) / 3).toDouble();

    return BlocConsumer<EmployeeFormBloc, EmployeeFormState>(
      buildWhen: (previous, current) {
        return previous != current;
      },
      listener: (context, state) {
        state.maybeWhen(
          deleted: (form) {
            context.go('/employees');
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          form: (form) {
            return Scaffold(
              appBar: AppBar(
                title: const _AppBarTitle(),
                leading: IconButton(
                  onPressed: () => context.go('/employees'),
                  icon: const Icon(Icons.arrow_back),
                ),
                actions: const [
                  LogoutIconButton(),
                ],
              ),
              body: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingWidth),
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const _NameField(),
                      const _SurnameField(),
                      const _PatronymicField(),
                      const _PhoneField(),
                      const _EmailField(),
                      const _BirthDateField(),
                      const _CommentField(),
                      const SizedBox(height: 24),
                      state.form.id == 'new'
                          ? _SaveButton(
                              form: state.form.minValid ? form : null,
                            )
                          : _UpdateButton(
                              form: state.form.minValid ? form : null),
                      if (state.form.id != 'new') const SizedBox(height: 24),
                      if (state.form.id != 'new')
                        _DeleteButton(employeeID: state.form.id),
                    ],
                  ),
                ),
              ),
            );
          },
          orElse: () {
            return const SimpleLoadingWidget();
          },
        );
      },
    );
  }
}
