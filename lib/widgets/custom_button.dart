import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:package_delivery_app/widgets/widget_support.dart';

class Buttons {
  CustomButtons({
    required String ButtonTitle,
    required Callback OnTap,
  }) {
    return InkWell(
      onTap: OnTap,
      child: Container(
        height: 40,
        width: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.blueAccent),
        child: Center(
            child: Text(
          ButtonTitle,
          style: AppWidget.WhiteTextFieldStyle(),
        )),
      ),
    );
  }
}
