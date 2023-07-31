import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:flweb/repository/services/auth_service.dart';
import 'package:flweb/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router(GetIt.I<AuthService>()),
      debugShowCheckedModeBanner: false,
    );
  }
}
