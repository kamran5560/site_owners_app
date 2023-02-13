import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Authorised.dart';
import 'Code_inactive_Screen.dart';
import 'Constains.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  bool obsecure = false;

  @override
  Widget build(BuildContext context) {
    bool _passwordInVisible = true;
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 22),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 22),
                  child: SvgPicture.asset('images/objects.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Text(
                    "Please login Owners site  App account",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff6D6D6D)),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(bottom: 20, left: 30, top: 22),
                    child:
                        TextField_Design("Phone Number", "Enter Phone Number")),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Elevated_Button('Submit', () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Code_Inactive_Screen(),
                        ));
                  }, 70, 13, 16),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 40),
                  child: Row(
                    children: [
                      Container(
                        child: SvgPicture.asset('images/Vector.svg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Authorised_Screen()));
                          },
                          child: Container(
                            child: Text(
                              "The APP is intended for authorised users only, after \n 4 errors the number will be blocked immediately",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xff949494)),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
