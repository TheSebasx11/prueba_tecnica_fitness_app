import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  backgroundColor: const Color(0xFFeff3ff),
  primaryColor: const Color(0xff5868e0),
);

List<BoxShadow> shadows = [
  BoxShadow(
    color: Colors.grey[400]!,
    offset: const Offset(3, 3),
    blurRadius: 6,
    spreadRadius: 1,
  ),
  BoxShadow(
      color: Colors.white.withOpacity(0.3),
      offset: const Offset(-2, -2),
      blurRadius: 6),
];
