import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Constains.dart';
import 'Login_Page.dart';

class Authorised_Screen extends StatefulWidget {
  const Authorised_Screen({Key? key}) : super(key: key);
  @override
  State<Authorised_Screen> createState() => _Authorised_ScreenState();
}

class _Authorised_ScreenState extends State<Authorised_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 38, top: 22),
              child: Row(
                children: [
                  SvgPicture.asset('images/Frame.svg'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset('images/Union.svg'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('images/Dx.svg'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset('images/Group11.svg'),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Contact the Office",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color(0xff0B3833)),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffFDEDEE)),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 22),
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You are not authorised to access the TENECALL APP.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff474747)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Please contact the company office",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff474747)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 48, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Outline_Button('Call us', () {}, 30, 13, 13),
                  Elevated_Button('Whatsapp', () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  }, 26, 13, 13),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25, left: 40),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset('images/Vector.svg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      "The use of this APP is for authorised users only",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff949494)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
