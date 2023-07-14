import 'package:flutter/material.dart';
import 'package:widget_book_test/style/color.dart';

const String notoSansKR = 'Noto Sans KR';

class MyTextStyle {
  static final MyTextStyle _instance = MyTextStyle._internal();

  factory MyTextStyle() => _instance;

  MyTextStyle._internal();

  static const TextStyle headline4B = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: MyColor.white,
    fontFamily: notoSansKR,
    height: 1.35,
  );

  static const TextStyle subtitle1R = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: MyColor.white,
    fontFamily: notoSansKR,
    height: 1.4,
  );
}
