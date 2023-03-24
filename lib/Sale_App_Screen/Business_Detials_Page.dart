import 'package:flutter/material.dart';

import 'Sale_Tech_Constant/Sale_Constant.dart';

class Business_Detials_Page extends StatefulWidget {
  const Business_Detials_Page({Key? key}) : super(key: key);

  @override
  State<Business_Detials_Page> createState() => _Business_Detials_PageState();
}

class _Business_Detials_PageState extends State<Business_Detials_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 22),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                    color: Color(0xffCCE4EF)),
                padding:
                    EdgeInsets.only(top: 52, bottom: 32, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff0A6F9A),
                      ),
                    ),
                    Text(
                      "Business",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.05,
                          color: Color(0xff474747)),
                    ),
                    Text("")
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffFFFFFF)),
                // padding: EdgeInsets.symmetric(vertical: 26, horizontal: 24),
                margin: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 10, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Business_Card_1(
                                "Business Name", "TENECALL office", context),
                            Business_Card_1(
                                "Business Name", "TENE12000000", context),
                            Business_Card_1(
                                "Business Name", "TENE12000000", context),
                            Business_Card_2("Phone Number", "9272543156396",
                                "call_icon", context),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 20, left: 10, bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Business_Card_1("", "", context),
                            Business_Card_1(
                                "Owner Name", "TENE-TEST-BU", context),
                            Business_Card_1(
                                "Establish Date", "27/ 04/ 2022", context),
                            Business_Card_2("Address", "Everywhere",
                                "location_icon", context),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Contract Details",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.05,
                              color: Color(0xff5F6868)),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Business_Card_3(
                            "OFFLINE sites v2", "MBPS", "5-20 mbps", context),
                        SizedBox(width: 12),
                        Business_Card_3(
                            "OFFLINE sites v2", "Speed Test", "100", context),
                      ],
                    ),
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Business_Card_3(
                            "Frame", "Monthly Payment", "1000 mbps", context),
                        SizedBox(width: 12),
                        Expanded(child: Container())
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Access Points",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.05,
                              color: Color(0xff5F6868)),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Business_Card_4("INDOOR access points",
                            "Indoor Access Point", "1", context),
                        SizedBox(width: 12),
                        Business_Card_4("OUTDOOR access points 2",
                            "Outdoor Access Point", "0", context),
                      ],
                    ),
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Business_Card_4("INDOOR access points 3",
                            "Total Access Points", "1", context),
                        SizedBox(width: 12),
                        Expanded(child: Container())
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Business Status",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.05,
                              color: Color(0xff5F6868)),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Business_Card_3(
                            "Business", "Status", "Business Running", context),
                        SizedBox(width: 24),
                        Business_Card_3("Online Users v2", "AP’s Status",
                            "Online", context),
                      ],
                    ),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Business_Card_4(
                            "Online Users v1", "Monthly views", "315", context),
                        SizedBox(width: 24),
                        Business_Card_4("OFFLINE sites v1", "Monthly Offline",
                            "0", context),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Installation Details",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.05,
                              color: Color(0xff5F6868)),
                        ),
                      ],
                    ),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Business_Card_3("OFFLINE sites v2",
                            "Installation Details", "19/07/2022", context),
                        SizedBox(width: 24),
                        Business_Card_3("Users", "Speed Test", "100", context),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
