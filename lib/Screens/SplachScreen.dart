import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Login_Page.dart';

class splachscreen extends StatefulWidget {
  const splachscreen({Key? key}) : super(key: key);

  @override
  State<splachscreen> createState() => _splachscreenState();
}

class _splachscreenState extends State<splachscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff20A99A),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SvgPicture.asset('images/logo.svg')],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                child: CircularProgressIndicator(
              color: Colors.white,
            )),
          ],
        ),
      ),
    );
  }
}
