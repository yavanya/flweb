import 'package:flutter/material.dart';
import 'package:flweb/app/myapp.dart';
import 'package:flweb/locator/locator.dart';

void main() async {
  await setupLocator();
  // setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}
