import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:flweb/repository/services/auth_service.dart';

class LogoutIconButton extends StatelessWidget {
  const LogoutIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return IconButton(
      onPressed: () async {
        await GetIt.I<AuthService>().logout();
        router.go('/login');
      },
      icon: const Icon(Icons.logout_outlined),
    );
  }
}
