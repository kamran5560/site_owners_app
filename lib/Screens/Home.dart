import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Constains.dart';
import 'Detials.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('images/sam_logo.svg'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.logout,
                              color: Colors.red,
                            ))
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffEAFDFB),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 25, horizontal: 28),
                      margin: EdgeInsets.symmetric(vertical: 48),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  "Hi Fazal you have 20 Sites active \nclick for more details",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xff6D6D6D)))
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("S/No",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff6D6D6D))),
                        Text("All Sites",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff6D6D6D))),
                        Text(""),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(children: [
                  Column(
                    children: [
                      List_view_card(1, context),
                      SizedBox(height: 32),
                      List_view_card(2, context),
                      SizedBox(height: 32),
                      List_view_card(3, context),
                      SizedBox(height: 32),
                      List_view_card(4, context),
                      SizedBox(height: 32),
                      List_view_card(5, context),
                      SizedBox(height: 32),
                      List_view_card(6, context),
                    ],
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Outline_Button('Call us', () {}, 28, 13, 13),
                    Elevated_Button('Whatsapp', () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(),
                          ));
                    }, 22, 13, 13),
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
