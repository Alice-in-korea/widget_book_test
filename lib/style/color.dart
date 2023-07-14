import 'package:flutter/material.dart';

class MyColor {
  static final MyColor _instance = MyColor._internal();

  factory MyColor() => _instance;

  MyColor._internal();

  /// Colors
  static const Color blue = Color(0xFF46A6FF);
  static const Color white = Color(0xFFffffff);
}
