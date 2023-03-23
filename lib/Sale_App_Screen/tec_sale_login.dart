import 'package:flutter/material.dart';

import '../Screens/Constains.dart';
import 'Home_Page.dart';
import 'Sale_Tech_Constant/Sale_Constant.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  @override
  Widget build(BuildContext context) {
    bool _passwordInVisible = true;
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 32),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("images_sale_app/small_logo.png"),
                      ],
                    ),
                    // SvgPicture.asset('images/objects.svg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 52),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                              color: Color(0xff0B3833)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        "Please login Owners site  App account",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff6D6D6D)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      TextField_Design("Email", "Enter Email"),
                    ],
                  ),
                  Row(
                    children: [
                      TextField_Design("Password", "Enter Password"),
                      //  Image.asset("images/eye-slash.png"),
                    ],
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 82),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Sale_tec_Elevated_Button('Next', () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home_Page(),
                              ));
                        }, 70, 13, 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
