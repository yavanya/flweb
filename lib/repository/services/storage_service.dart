import 'dart:async';
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:flweb/constants/kcredentials.dart';
import 'package:flweb/constants/kemployees.dart';

class StorageService {
  final _storage = const FlutterSecureStorage(
    webOptions: WebOptions(
      dbName: 'asdasdasd',
      publicKey: 'asdasdasd',
    ),
  );

  Timer? _debounceTimer;

  Future<void> init() async {
    await writeIfNull('employees', json.encode(kEmployees));
    await writeIfNull('creds', json.encode(kCreds));
    await writeIfNull('draft', json.encode({}));
  }

  Future<String> getString(String key) async {
    final str = await _storage.read(key: key);
    return str ?? '';
  }

  Future<num> getNum(String key) async {
    final value = await _storage.read(key: key) ?? '';
    final res = num.tryParse(value);

    if (res != null) {
      return res;
    } else {
      throw Exception('Value is not num');
    }
  }

  Future<bool> getBool(String key) async {
    final value = await _storage.read(key: key) ?? '';

    if (value == 'true') {
      return true;
    } else if (value == 'false') {
      return false;
    } else {
      throw Exception('Value is not bool');
    }
  }

  Future<void> writeAsync(String key, Object value) async {
    String toWrite;

    if (value is String) {
      toWrite = value;
    } else {
      toWrite = value.toString();
    }
    await _storage.write(key: key, value: toWrite);
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  Future<void> writeIfNull(String key, Object value) async {
    final currentValue = await _storage.read(key: key);

    if (currentValue == null) {
      await writeAsync(key, value);
    }
  }

  void debounceHandler(String key, Object value, [int delay = 50]) {
    if (_debounceTimer != null && _debounceTimer!.isActive) {
      _debounceTimer!.cancel();
    }
    _debounceTimer = Timer(
      Duration(milliseconds: delay),
      () async => await writeAsync(key, value),
    );
  }
}
