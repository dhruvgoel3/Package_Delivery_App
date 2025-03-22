import 'package:flutter/material.dart';
import 'package:package_delivery_app/widgets/widget_support.dart';

class TextFields {
  CustomTextField({
    required Icon icon,
    required String tittle,
  }) {
    return Container(
        margin: EdgeInsets.only(left: 0),
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10)),
        width: 350,
        height: 45,
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: icon,
              hintText: tittle,
              hintStyle: AppWidget.normalWhiteTextFieldStyle()),
        ));
  }
}
