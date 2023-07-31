import 'dart:convert';

import 'package:get_it/get_it.dart';

import 'package:flweb/repository/services/storage_service.dart';

class AuthService {
  final _storage = GetIt.I<StorageService>();
  bool isLoggedIn = false;

  Future<void> init([lastLoginExpirationMinutes = 10]) async {
    final lastLogin = await _storage.getString('lastLogin');
    if (lastLogin.isNotEmpty && DateTime.tryParse(lastLogin) != null) {
      final lastLoginDecoded = DateTime.parse(lastLogin);
      final now = DateTime.now();
      final diff = now.difference(lastLoginDecoded).inMinutes;

      if (diff < lastLoginExpirationMinutes) {
        isLoggedIn = true;
      }
    }
  }

  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final creds = await _storage.getString('creds');

    final credsDecoded = json.decode(creds);

    for (final cred in credsDecoded) {
      if (cred['email'] == email && cred['password'] == password) {
        await _storage.writeAsync(
            'lastLogin', DateTime.now().toIso8601String());
        isLoggedIn = true;
        return isLoggedIn;
      }
    }

    return false;
  }

  Future<void> logout() async {
    isLoggedIn = false;
  }
}
