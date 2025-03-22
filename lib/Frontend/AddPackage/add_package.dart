import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:package_delivery_app/widgets/custom_button.dart';
import 'package:package_delivery_app/widgets/custom_textfields.dart';
import 'package:package_delivery_app/widgets/widget_support.dart';

class AddPackage extends StatefulWidget {
  const AddPackage({super.key});

  @override
  State<AddPackage> createState() => _AddPackageState();
}

class _AddPackageState extends State<AddPackage> {
  // Controllers

  TextEditingController PickUpAddress = new TextEditingController();
  TextEditingController PickUpUserName = new TextEditingController();
  TextEditingController PickUpPhoneNumber = new TextEditingController();
  TextEditingController DropOffAddress = new TextEditingController();
  TextEditingController DropOffUserName = new TextEditingController();
  TextEditingController DropOffPhoneNumber = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // MediaQuerrry
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
                child: SingleChildScrollView(
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
                          controller: PickUpAddress,
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
                          controller: DropOffAddress,
                          icon: Icon(CupertinoIcons.location_solid),
                          tittle: "Enter drop off location"),
                      SizedBox(height: 15),
                      Buttons().CustomButtons(
                          ButtonTitle: "Submit Location",
                          OnTap: () {
                            Get.to(() => Placeholder());
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(top: 20, bottom: 20, right: 20),
                        margin: EdgeInsets.only(right: 20, left: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Colors.black45, width: 1.5)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: height * 0.17),
                              child: Text(
                                "Pick-up-details",
                                style: AppWidget.HeadLineTextFieldStyle(20),
                              ),
                            ),
                            TextFields().CustomPickUpTextfield(
                                controller: PickUpAddress,
                                icon: Icon(
                                  Icons.location_on,
                                  color: Colors.blueAccent,
                                ),
                                Tittle: "Enter Pick-up Address"),
                            SizedBox(
                              height: 8,
                            ),
                            TextFields().CustomPickUpTextfield(
                                controller: PickUpUserName,
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.blueAccent,
                                ),
                                Tittle: "Enter Name"),
                            SizedBox(
                              height: 8,
                            ),
                            TextFields().CustomPickUpTextfield(
                                controller: PickUpPhoneNumber,
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.blueAccent,
                                ),
                                Tittle: "Enter phone number")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(top: 20, bottom: 20, right: 20),
                        margin: EdgeInsets.only(right: 20, left: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: Colors.black45, width: 1.5)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: height * 0.17),
                              child: Text(
                                "Drop-off-details",
                                style: AppWidget.HeadLineTextFieldStyle(20),
                              ),
                            ),
                            TextFields().CustomPickUpTextfield(
                                controller: DropOffAddress,
                                icon: Icon(
                                  Icons.location_on,
                                  color: Colors.blueAccent,
                                ),
                                Tittle: "Enter Drop-off Address"),
                            SizedBox(
                              height: 8,
                            ),
                            TextFields().CustomPickUpTextfield(
                                controller: DropOffUserName,
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.blueAccent,
                                ),
                                Tittle: "Enter Name"),
                            SizedBox(
                              height: 8,
                            ),
                            TextFields().CustomPickUpTextfield(
                                controller: DropOffPhoneNumber,
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.blueAccent,
                                ),
                                Tittle: "Enter phone number")
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: width * 0.9,
                        height: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Total price",
                                    style: AppWidget.HeadLineTextFieldStyle(18),
                                  ),
                                  Text(
                                    "\$80",
                                    style: AppWidget.HeadLineTextFieldStyle(22),
                                  )
                                ],
                              ),
                            ),
                            Buttons().CustomButtons(
                                ButtonTitle: "Place order",
                                OnTap: () {
                                  Get.to(() => Placeholder());
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
