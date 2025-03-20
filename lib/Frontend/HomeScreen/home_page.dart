import 'package:flutter/material.dart';
import 'package:package_delivery_app/widgets/widget_support.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.055,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.18,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xff6053f8),
                          ),
                          Text(
                            "Current Location",
                            style: AppWidget.SimpleTextFieldStyle(),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Rohini sector 3-A , New Delhi",
                        style: AppWidget.HeadLineTextFieldStyle(18),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: height / 2.2,
              width: width * 1,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Track your shipment",
                    style: AppWidget.WhiteTextFieldStyle(),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Please enter your tracking number",
                    style: AppWidget.differentWhiteTextFieldStyle(),
                  ),
                  SizedBox(height: 25),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: height * 0.055,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter track number",
                          prefixIcon: Icon(
                            Icons.track_changes,
                            color: Colors.red,
                          ),
                          hintStyle: AppWidget.HeadLineTextFieldStyle(17)),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/home.png",
                    height: height * 0.22,
                  )
                ],
              ),
            ),
            Container(
              width: width*1,
              decoration: BoxDecoration(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}
