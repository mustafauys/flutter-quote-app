import 'package:flutter/material.dart';
import 'package:flutterquote/pages/home_page.dart';
import 'package:flutterquote/widgets/color_constants.dart';
import 'package:flutterquote/widgets/enum.dart';
import 'package:flutterquote/widgets/large_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.sinbad,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(color: ColorConstants.black),
                ),
                children: [
                  TextSpan(text: "Hello,\n", style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: "Welcome to the World of Quotes!",
                      style: TextStyle(fontSize: 30)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: LargeButton(
                buttonSize: ButtonSize.large,
                borderColor: ColorConstants.eastBay,
                radius: 10,
                elevation: 20,
                backgroundColor: ColorConstants.steelGray,
                isOutlined: false,
                style: TextStyle(color: ColorConstants.white),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                text: "Let's get started !",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
