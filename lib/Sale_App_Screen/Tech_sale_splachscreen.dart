import 'dart:async';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:site_owners_app/Sale_App_Screen/tec_sale_login.dart';

class Tech_sale_splachscreen extends StatefulWidget {
  const Tech_sale_splachscreen({Key? key}) : super(key: key);

  @override
  State<Tech_sale_splachscreen> createState() => _Tech_sale_splachscreenState();
}

class _Tech_sale_splachscreenState extends State<Tech_sale_splachscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login_Page(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images_sale_app/splash_logo.png"),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                child: CircularProgressIndicator(
              color: Colors.blue.shade400,
            )),
          ],
        ),
      ),
    );
  }
}
