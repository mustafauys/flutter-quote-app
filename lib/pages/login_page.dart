import 'package:flutter/material.dart';
import 'package:flutterquote/pages/home_page.dart';
import 'package:flutterquote/widgets/color_constants.dart';
import 'package:flutterquote/widgets/custom_textfield.dart';
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(
              flex: 3,
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(color: ColorConstants.black),
                ),
                children: [
                  TextSpan(text: "Hello,\n", style: TextStyle(fontSize: 16)),
                  TextSpan(
                      text: "Welcome to the World of Quotes!",
                      style: TextStyle(fontSize: 25)),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              context: context,
              hintText: 'Telephone Number',
              isOutlined: true,
              borderColor: ColorConstants.sinbad,
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: LargeButton(
                buttonSize: ButtonSize.large,
                borderColor: ColorConstants.eastBay,
                radius: 10,
                isOutlined: false,
                style: TextStyle(color: ColorConstants.eastBay),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                text: "Let's Move On To The Words",
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
