import 'package:flutter/material.dart';
import 'package:package_delivery_app/widgets/widget_support.dart';

class TextFields {
  CustomTextField(
      {required Icon icon,
      required String tittle,
      required TextEditingController controller}) {
    return Container(
        margin: EdgeInsets.only(left: 0),
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10)),
        width: 350,
        height: 45,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: icon,
              hintText: tittle,
              hintStyle: AppWidget.normalWhiteTextFieldStyle()),
        ));
  }

  CustomPickUpTextfield(
      {required Icon icon,
      required String Tittle,
      required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        children: [
          icon,
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: Tittle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                  ),
                  hintStyle: AppWidget.normalWhiteTextFieldStyle()),
            ),
          )
        ],
      ),
    );
  }
}
