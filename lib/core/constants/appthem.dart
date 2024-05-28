import 'package:flutter/material.dart';
import 'package:game2/core/constants/color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "playfairDisplay",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 10, color: AppColor.black),
    headline2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.gray,
        fontSize: 14,
        fontWeight: FontWeight.bold),
    bodyText2: TextStyle(height: 2, color: AppColor.gray, fontSize: 14),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "cairo",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
    headline2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
    bodyText1: TextStyle(
        height: 2,
        color: AppColor.gray,
        fontSize: 14,
        fontWeight: FontWeight.bold),
    bodyText2: TextStyle(height: 2, color: AppColor.gray, fontSize: 14),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);
