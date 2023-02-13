import 'package:flutter/material.dart';

import 'Constains.dart';
import 'Home.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home_Screen(),
                        ));
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Color(0xff0A6F9A),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                decoration: Card_decuration_green,
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Fazal_details_card()),
            Column(
              children: [
                Container(
                    decoration: Card_decuration,
                    padding: EdgeInsets.symmetric(vertical: 22, horizontal: 24),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Site_Status_Card(context)),
                Container(
                  decoration: Card_decuration,
                  padding: EdgeInsets.symmetric(vertical: 22, horizontal: 24),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Connected Users",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff5F6868)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Site_Card2("Guset network", "12345",
                              "Employe Network", "12345", context),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: Card_decuration,
                  padding: EdgeInsets.symmetric(vertical: 22, horizontal: 24),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "This Month there were",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff5F6868)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Site_Card2("Total Users", "52", "Total Views",
                              "12345", context),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: Card_decuration,
                  padding: EdgeInsets.symmetric(vertical: 22, horizontal: 24),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "This Year there were",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff5F6868)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Site_Card2("Total Users", "520", "Total Views",
                              "12345", context),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Elevated_Button('Call the Company Rep', () {}, 32, 12, 13),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
