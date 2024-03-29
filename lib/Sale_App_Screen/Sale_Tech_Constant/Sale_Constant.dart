import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

Widget Sale_tec_Elevated_Button(
  String B_text,
  Function() onpress,
  double padding_hor,
  double padding_ver,
  double font_size,
) {
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
                  MaterialStateProperty.all<Color>(Colors.blue.shade500),
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

Widget Home_screen_Card1(String image, String dec, String text) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: Colors.white),
    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images_sale_app/${image}.png"),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "${dec}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff474747)),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "${text}",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff949494)),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget Home_card2(
  String text1,
  String text2,
  String text3,
) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: Colors.white),
    padding: EdgeInsets.symmetric(vertical: 28, horizontal: 22),
    margin: EdgeInsets.symmetric(vertical: 12),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${text1}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0xff065B80)),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${text2}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff949494)),
                  ),
                  Text(
                    "${text3}",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff949494)),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget Profile_screen_card(
    String image1, String image2, String text1, String text2) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xff6D6D6D)),
        color: Colors.white),
    padding: EdgeInsets.symmetric(vertical: 28, horizontal: 22),
    margin: EdgeInsets.symmetric(
      vertical: 16,
    ),
    child: Row(
      children: [
        Row(
          children: [
            Image.asset("images_sale_app/${image1}.png"),
            SizedBox(
              width: 28,
            ),
            Image.asset("images_sale_app/${image2}.png"),
          ],
        ),
        SizedBox(
          width: 32,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${text1}",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff6D6D6D)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "${text2}",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Color(0xff474747)),
            ),
          ],
        )
      ],
    ),
  );
}

Widget Business_Card_1(String trxt_1, String trxt_2, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 22),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${trxt_1}",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: width * 0.038,
              color: Color(0xff949494)),
        ),
        SizedBox(height: 10),
        Text(
          "${trxt_2}",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: width * 0.04,
              color: Color(0xff6D6D6D)),
        ),
      ],
    ),
  );
}

Widget Business_Card_2(
    String trxt_1, String trxt_2, String image, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 22),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${trxt_1}",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: width * 0.038,
              color: Color(0xff949494)),
        ),
        SizedBox(height: 10),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "${trxt_2}",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: width * 0.042,
                    color: Color(0xff6D6D6D)),
              ),
            ),
            SizedBox(width: 16),
            Image.asset("images_sale_app/${image}.png")
          ],
        )
      ],
    ),
  );
}

Widget Business_Card_3(
    String image, String text_1, String text_2, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return Expanded(
    child: Container(
      // width: 150,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xffFFFFFF)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("images_sale_app/${image}.png"),
          SizedBox(height: 24),
          Text(
            "${text_1}",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: width * 0.035,
                color: Color(0xff474747)),
          ),
          SizedBox(height: 8),
          Text(
            "${text_2}",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: width * 0.029,
                color: Color(0xff949494)),
          ),
        ],
      ),
    ),
  );
}

Widget Business_Card_4(
    String image, String text_1, String text_2, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  return Expanded(
    child: Container(
      // width: 150,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xffFFFFFF)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("images_sale_app/${image}.png"),
          SizedBox(height: 16),
          Text(
            "${text_1}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: width * 0.028,
                color: Color(0xff949494)),
          ),
          SizedBox(height: 8),
          Text(
            "${text_2}",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: width * 0.05,
                color: Color(0xff474747)),
          ),
        ],
      ),
    ),
  );
}
