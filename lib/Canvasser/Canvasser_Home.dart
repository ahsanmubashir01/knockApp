import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:knock/Canvasser/Canvasser_Customer.dart';
import 'package:knock/Canvasser/Walk_Sheet.dart';
import 'package:knock/Canvasser/District.dart';
import '../Data Management/Data_Manage_Screen.dart';
import '../District Map/Map.dart';
import '../Notification/Political_Notification.dart';
import '../Political Dashboard/Manage_Campaigns.dart';
import '../Setting/Set_Screen.dart';
import 'Canvasser_Compaigns.dart';

class Canvasser_Home extends StatelessWidget {
  const Canvasser_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/rae lil black.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Michael Turcotte",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Admin",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer home pic.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Get.to(() => MapScreen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer map.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Map",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Get.to(() => Manage_Campaigns());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer compagins.svg"),
                    SizedBox(width: 8),
                    Text(
                      "All Campaigns",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Get.to(() => Set_Screen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer setting.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Setting",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/drawer logout.svg"),
                    SizedBox(width: 8),
                    Text(
                      "Log Out",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (context) {
                    return InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: SvgPicture.asset("assets/Drawer.svg"));
                  }),
                  Text("Canvasser Dashboard",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                  InkWell(
                      onTap: () {
                        Get.to(() => Political_Notification());
                      },
                      child: SvgPicture.asset("assets/Notification.svg")),
                ],
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Good morning,",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Terri Cartwright",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Row(
                  children: [
                    Expanded(child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffed7d2b),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32))),
                        child: Text(
                          "Active Campaigns",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        )),),
                    SizedBox(width: 10,),
                    Expanded(child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffed7d2b),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32))),
                        child: Text(
                          "Completed Campaigns",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        )),),
                  ]
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 130,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xffed7d2b),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "0025 Kuvalis Landing",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xff14b15c),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "724 Denesik Pines",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "To Customer:",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffb3b3b3)),
                              ),
                              Text(
                                "Bill Oberbrunner",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                            width: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffed7d2b),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(32))),
                                child: Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xfffafafa),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 130,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xffed7d2b),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "5923 Camille Junction",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Color(0xff14b15c),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 20,
                              width: 20,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              )),
                          SizedBox(width: 10),
                          Text(
                            "322 Bret Turnpike",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff323437)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "To Customer:",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffb3b3b3)),
                              ),
                              Text(
                                "Jeannette Koelpin",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                            width: 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffed7d2b),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(32))),
                                child: Text(
                                  "Start",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 0.5,
                width: Get.width,
                color: Color(0xffefefef),
              ),
              SizedBox(height: 15),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
