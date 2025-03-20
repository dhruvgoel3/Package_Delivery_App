import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:package_delivery_app/Frontend/HomeScreen/home_page.dart';
import 'package:package_delivery_app/widgets/widget_support.dart';

class OnboardingScrean extends StatefulWidget {
  const OnboardingScrean({super.key});

  @override
  State<OnboardingScrean> createState() => _OnboardingScreanState();
}

class _OnboardingScreanState extends State<OnboardingScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Image.asset("assets/onboard.png"),
            SizedBox(
              height: 50,
            ),
            Text(
              "Track your parcel\nfrom anywhere",
              textAlign: TextAlign.center,
              style: AppWidget.HeadLineTextFieldStyle(28),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Check the progress of the parcel",
              style: AppWidget.SimpleTextFieldStyle(18),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Get.to(() => HomePage());
              },
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                      color: Color(0xfff8ae39),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    "Track Now",
                    style: AppWidget.WhiteTextFieldStyle(),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
