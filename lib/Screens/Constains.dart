import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

var Card_decuration_green = BoxDecoration(
    borderRadius: BorderRadius.circular(12), color: Color(0xffEAFDFB));
var Card_decuration = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Color(0xffFFFFFF),
    border: Border.all(color: Color(0xffDADADA)));
Widget TextField_Design(
  String title,
  String hint,
) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff949494)),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          width: 300,
          child: TextField(
            decoration: new InputDecoration(
              hintText: "$hint",
              hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6D6D6D)),
              border: const OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffA8B1B2)),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Elevated_Button(String B_text, Function() onpress, double padding_hor,
    double padding_ver, double font_size) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: ElevatedButton(
            onPressed: onpress,
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xff157066)),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: padding_hor, vertical: padding_ver),
              child: Text(
                '$B_text',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: font_size,
                    color: Color(0xffFFFFFF)),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Outline_Button(String B_text, Function() onpress, double padding_hor,
    double padding_ver, double font_size) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
    child: ElevatedButton(
      onPressed: onpress,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xffDADADA)),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: padding_hor, vertical: padding_ver),
        child: Text(
          '$B_text',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: font_size,
              color: Color(0xff474747)),
        ),
      ),
    ),
  );
}

Widget OTP(BuildContext context) {
  return OtpTextField(
    numberOfFields: 4,
    borderColor: Color(0xFF33D8C6),
    //set to true to show as box or false to show as dash
    showFieldAsBox: true,
    fieldWidth: 55, margin: EdgeInsets.symmetric(horizontal: 8),
    focusedBorderColor: Color(0xff33D8C6),
    //runs when a code is typed in
    onCodeChanged: (String code) {
      //handle validation or checks here
    },
    //runs when every textfield is filled
    onSubmit: (String verificationCode) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Verification Code"),
              content: Text('Code entered is $verificationCode'),
            );
          });
    }, // end onSubmit
  );
}

Widget List_view_card(int value, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("${value}",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xff000000))),
      Text("TENECELL12000",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xff000000))),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_forward_ios),
        color: Color(0xff949494),
      )
    ],
  );
}

Widget Fazal_details_card() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Fazal,",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff6D6D6D))),
            Text("These are the details of",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff6D6D6D))),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text("TENE12000 ",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff6D6D6D))),
      ),
    ],
  );
}

Widget Site_Card(String text1, String text2, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("${text1}",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xff949494))),
      SizedBox(
        height: 10,
      ),
      Text("${text2}",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff6D6D6D))),
    ],
  );
}

Widget Site_Card2(String text1, String text2, String text3, String text4,
    BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("${text1}",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xff949494))),
      SizedBox(
        height: 5,
      ),
      Text("${text2}",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xff6D6D6D))),
      SizedBox(
        height: 8,
      ),
      Text("${text3}",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xff949494))),
      SizedBox(
        height: 5,
      ),
      Text("${text4}",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xff6D6D6D))),
    ],
  );
}

Widget Site_Status_Card(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Site_Card("Site Name", "Site Name", context),
          SizedBox(
            height: 32,
          ),
          Site_Card("AP Status", "Active", context),
        ],
      ),
      Column(
        children: [
          Site_Card("Address", "Mingora", context),
          SizedBox(
            height: 32,
          ),
          Site_Card("Site Status", "Active", context),
        ],
      ),
      Column(
        children: [
          Site_Card("Installation Date", "31/02/2022", context),
          SizedBox(
            height: 32,
          ),
          Site_Card("", "", context),
        ],
      )
    ],
  );
}
