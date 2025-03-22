import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle HeadLineTextFieldStyle(double textsize) {
    return TextStyle(
        color: Colors.black, fontSize: textsize, fontWeight: FontWeight.bold);
  }

  static TextStyle normalWhiteTextFieldStyle() {
    return TextStyle(
        color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w500);
  }

  static TextStyle SimpleTextFieldStyle(double Simpletextsize) {
    return TextStyle(
        color: Colors.black38,
        fontSize: Simpletextsize,
        fontWeight: FontWeight.w500);
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
