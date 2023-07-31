import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:flweb/repository/services/auth_service.dart';
import 'package:flweb/ui/employee_edit/employee_page.dart';
import 'package:flweb/ui/employee_list/employee_list_page.dart';
import 'package:flweb/ui/login/login_page.dart';

GoRouter router(AuthService authService) {
  return GoRouter(
    initialLocation: '/employees',
    routes: [
      GoRoute(
        path: '/login',
        name: 'login',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: const LoginPage(),
          );
        },
      ),
      GoRoute(
        path: '/employees/:id',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: EmployeeEditPage(
                employeeID: state.pathParameters['id'] ?? 'new'),
          );
        },
      ),
      GoRoute(
        path: '/employees',
        name: 'employees',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: const EmployeeListPage(),
          );
        },
      ),
    ],
    redirect: (context, state) {
      final isLoggedIn = authService.isLoggedIn;
      if (state.location == '/login' && isLoggedIn) {
        return '/employees';
      }

      if (!isLoggedIn) {
        return '/login';
      }

      return null;
    },
  );
}
