import 'package:flutter/material.dart';

class CustomColor{
  static Color? textFieldBorder = Colors.grey[300];
  static Color lightGradient = Color(0xff91A0FC);
  static Color? textFieldColor = Colors.grey[100];
  static Color blackColor = Colors.black;
  static LinearGradient upDownLinearGradient = LinearGradient(
      colors: [
        lightGradient,
        Color(0xff6476E6),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );
}