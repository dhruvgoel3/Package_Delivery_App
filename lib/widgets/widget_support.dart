import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle HeadLineTextFieldStyle(double textsize) {
    return TextStyle(
        color: Colors.black, fontSize: textsize, fontWeight: FontWeight.bold);
  }

  static TextStyle SimpleTextFieldStyle() {
    return TextStyle(
        color: Colors.black38, fontSize: 18, fontWeight: FontWeight.w500);
  }

  static TextStyle WhiteTextFieldStyle() {
    return TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  }

  static TextStyle differentWhiteTextFieldStyle() {
    return TextStyle(
        color: Colors.white54, fontSize: 17, fontWeight: FontWeight.bold);
  }
}
