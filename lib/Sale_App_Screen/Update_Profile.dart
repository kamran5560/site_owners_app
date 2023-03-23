import 'package:flutter/material.dart';

import '../Screens/Constains.dart';
import 'Sale_Tech_Constant/Sale_Constant.dart';

class Updatee_profile extends StatefulWidget {
  const Updatee_profile({Key? key}) : super(key: key);

  @override
  State<Updatee_profile> createState() => _Updatee_profileState();
}

class _Updatee_profileState extends State<Updatee_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 22, horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Color(0xff000000)),
              ),
              SizedBox(height: 32),
              Text(
                "Photo",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xff6D6D6D)),
              ),
              SizedBox(height: 10),
              Image.asset("images_sale_app/Avatars.png"),
              TextField_Design("", "Name"),
              TextField_Design("", "(+01)"),
              Padding(
                padding: EdgeInsets.only(top: 162),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Sale_tec_Elevated_Button('Update', () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => Home_Page(),
                      //     ));
                    }, 52, 13, 16),
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
