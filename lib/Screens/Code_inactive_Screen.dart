import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Constains.dart';
import 'Home.dart';

class Code_Inactive_Screen extends StatefulWidget {
  const Code_Inactive_Screen({Key? key}) : super(key: key);

  @override
  State<Code_Inactive_Screen> createState() => _Code_Inactive_ScreenState();
}

class _Code_Inactive_ScreenState extends State<Code_Inactive_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Row(
                  children: [
                    SvgPicture.asset('images/sam_logo.svg'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('images/opt.svg'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OTP Verification",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff157066)),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 22),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Enter the OTP sent to",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5A5858))),
                    SizedBox(
                      width: 10,
                    ),
                    Text("+1 331 623 8413",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0F0F0F))),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [OTP(context)],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Dont recivce the OTP ?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5A5858))),
                    SizedBox(
                      width: 10,
                    ),
                    Text("RESEND OTP",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffDA8B78))),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Elevated_Button('Send OTP', () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home_Screen(),
                          ));
                    }, 60, 13, 16),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
