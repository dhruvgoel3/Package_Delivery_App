import 'package:flutter/material.dart';
import 'package:package_delivery_app/widgets/widget_support.dart';

class Buttons {
  CustomButtons({
    required String ButtonTitle,
  }) {
    return Container(
      height: 45,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.blueAccent),
      child: Center(
          child: Text(
        ButtonTitle,
        style: AppWidget.WhiteTextFieldStyle(),
      )),
    );
  }
}
