import 'package:flutter/material.dart';
import 'package:flutterquote/widgets/color_constants.dart';
import 'package:flutterquote/widgets/enum.dart';
import 'package:flutterquote/widgets/large_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = 40;
    double width = 40;
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Image.asset(
              "assets/quote.png",
              height: height,
              width: width,
            ),
            SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(fontSize: 50, color: Colors.black),
                ),
                children: [
                  TextSpan(text: "Broaden Your \n"),
                  TextSpan(
                      text: "Horizons",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: LargeButton(
                buttonSize: ButtonSize.large,
                borderColor: ColorConstants.cameo,
                radius: 10,
                isOutlined: false,
                style: TextStyle(color: ColorConstants.cameo),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                text: "Let's Go",
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
