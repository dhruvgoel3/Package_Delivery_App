import 'package:flutter/material.dart';

import '../../widgets/widget_support.dart';

class HomepageFeatures extends StatefulWidget {
  const HomepageFeatures({super.key});

  @override
  State<HomepageFeatures> createState() => _HomepageFeaturesState();
}

class _HomepageFeaturesState extends State<HomepageFeatures> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Container(
            width: width * width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 1)),
            child: Row(
              children: [
                Image.asset(
                  "assets/fast-delivery.png",
                  height: 100,
                  width: 120,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Order a delivery",
                        style: AppWidget.HeadLineTextFieldStyle(22),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Text(
                        textAlign: TextAlign.center,
                        "We'll pick it up and deliver it\nacross town quicklu and securly",
                        style: AppWidget.SimpleTextFieldStyle(15),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Container(
            width: width * width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 1)),
            child: Row(
              children: [
                Image.asset(
                  "assets/parcel.png",
                  height: 100,
                  width: 120,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Track a delivery",
                        style: AppWidget.HeadLineTextFieldStyle(22),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Track your delivery in real-Time from pickup to drop-off",
                        style: AppWidget.SimpleTextFieldStyle(15),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Container(
            width: width * width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 1)),
            child: Row(
              children: [
                Image.asset(
                  "assets/delivery-bike.png",
                  height: 100,
                  width: 120,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Text(
                        "Check delivery history",
                        style: AppWidget.HeadLineTextFieldStyle(20),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Check your delivery history to view and stay organized ",
                        style: AppWidget.SimpleTextFieldStyle(15),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
