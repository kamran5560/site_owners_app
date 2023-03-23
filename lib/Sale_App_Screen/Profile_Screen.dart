import 'package:flutter/material.dart';

import 'Sale_Tech_Constant/Sale_Constant.dart';
import 'Update_Profile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 22, horizontal: 22),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff949494),
                    ),
                  )
                ],
              ),
              SizedBox(height: 32),
              Padding(
                padding: EdgeInsets.only(bottom: 52),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Updatee_profile(),
                                  ));
                            },
                            child: Image.asset(
                                "images_sale_app/profile picture.png")),
                        SizedBox(height: 24),
                        Text(
                          "Sale User",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color(0xff0B3833)),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Sales representative",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xff6D6D6D)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Profile_screen_card(
                  "email", "Line", "Email", "SaleUser@gmail.com"),
              Profile_screen_card(
                  "phone", "Line", "Phone number", "+972 55 811 7224"),
            ],
          ),
        ),
      ),
    );
  }
}
