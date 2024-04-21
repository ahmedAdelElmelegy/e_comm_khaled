import 'package:flutter/material.dart';
import 'package:shopink/core/function/Res_text.dart';

abstract class MyTextStyle {
  static TextStyle customTextStyle =
      const TextStyle(fontWeight: FontWeight.bold);
  static TextStyle largetext = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static TextStyle smalltext =
      const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey);
  static TextStyle mediumtext = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );
}
