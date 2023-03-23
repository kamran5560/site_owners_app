import 'package:flutter/material.dart';

import 'Profile_Screen.dart';
import 'Sale_Tech_Constant/Sale_Constant.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDADADA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 22, horizontal: 28),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("images_sale_app/logout.png"),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ));
                      },
                      child: Image.asset("images_sale_app/Rectangle.png")),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff949494)),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Sale User ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xff474747)),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Businesses",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xff6D6D6D)),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "500",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 42,
                              color: Color(0xff065B80)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Learn more",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff20A99A)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          ">",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Color(0xff20A99A)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Home_screen_Card1(
                      "repair", "Repair & Installation", "Learn more    >"),
                  Home_screen_Card1("access_points", "Collect Access points",
                      "Learn more    >"),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Pending to Approve",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xff474747)),
                    ),
                  ],
                ),
              ),
              Home_card2(
                  "Business NameBusiness Name", "Owner name", "TENE1200003"),
              Home_card2(
                  "Business NameBusiness Name", "Owner name", "TENE1200003"),
              Home_card2(
                  "Business NameBusiness Name", "Owner name", "TENE1200003"),
            ]),
          ),
        ),
      ),
    );
  }
}
