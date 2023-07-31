import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flweb/ui/login/bloc/login_form_bloc.dart';
import 'package:flweb/ui/login/bloc/login_page_bloc.dart';
import 'package:flweb/ui/login/widgets/login_form_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginFormBloc>(
          create: (context) => LoginFormBloc(),
        ),
        BlocProvider<LoginPageBloc>(
          create: (context) => LoginPageBloc(),
        )
      ],
      child: BlocListener<LoginPageBloc, LoginPageState>(
        listener: (context, state) {
          state.maybeWhen(
            authenticated: (authenticated) {
              if (authenticated) {
                context.go('/employees');
              } else {
                _invalidCredsSnackBar(context);
              }
            },
            orElse: () {},
          );
        },
        child: const LoginFormWidget(),
      ),
    );
  }

  void _invalidCredsSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Invalid Email or Password'),
      ),
    );
  }
}
