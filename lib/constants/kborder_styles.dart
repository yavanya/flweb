import 'package:flutter/material.dart';

mixin KBorderStyles {
  static const textFieldBorderBlack = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
    borderSide: BorderSide(color: Colors.black, width: 1.0),
  );
}
