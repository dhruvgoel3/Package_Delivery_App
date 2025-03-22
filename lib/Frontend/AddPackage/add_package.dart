import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_delivery_app/widgets/custom_button.dart';
import 'package:package_delivery_app/widgets/custom_textfields.dart';
import 'package:package_delivery_app/widgets/widget_support.dart';

class AddPackage extends StatefulWidget {
  const AddPackage({super.key});

  @override
  State<AddPackage> createState() => _AddPackageState();
}

class _AddPackageState extends State<AddPackage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0, top: width * 0.08),
                child: Text(
                  "Add Package",
                  style: AppWidget.WhiteTextFieldStyle(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: height * 0.95,
                width: width * 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/delivery-truck.png",
                      height: 140,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.58),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Add Location",
                            style: AppWidget.HeadLineTextFieldStyle(20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Pick up",
                            style: AppWidget.HeadLineTextFieldStyle(18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    TextFields().CustomTextField(
                        icon: Icon(Icons.search_rounded),
                        tittle: "Enter pick up location"),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: height * 0.346),
                      child: Text(
                        "DropOff",
                        style: AppWidget.HeadLineTextFieldStyle(18),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFields().CustomTextField(
                        icon: Icon(CupertinoIcons.drop),
                        tittle: "Enter drop of location"),
                    SizedBox(height: 15),
                    Buttons().CustomButtons(ButtonTitle: "Submit Location"),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: height * 0.255),
                      child: Text(
                        "Pick-up-details",
                        style: AppWidget.HeadLineTextFieldStyle(20),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
