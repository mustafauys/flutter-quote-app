import 'package:flutter/material.dart';
import 'package:flutterquote/core/constants/color_constants.dart';
import 'package:flutterquote/core/enums/enum.dart';
import 'package:flutterquote/core/widgets/large_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = 40;
    double width = 40;
    return Scaffold(
      backgroundColor: ColorConstants.cameo,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/quote.png",
              height: height,
              width: width,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: LargeButton(
                buttonSize: ButtonSize.large,
                borderColor: ColorConstants.cameo,
                radius: 10,
                elevation: 20,
                backgroundColor: ColorConstants.black,
                isOutlined: false,
                style: TextStyle(color: ColorConstants.cameo),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                text: "Let's Go",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
