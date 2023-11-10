import 'package:flutter/material.dart';
import 'package:flutterquote/core/constants/color_constants.dart';
import 'package:flutterquote/core/extensions/context_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class QuoteWidget extends StatelessWidget {
  final quote;
  final author;
  final onShareClick;
  final onLikeClick;
  final bgColor;

  QuoteWidget(
      {this.bgColor,
      this.quote,
      this.author,
      this.onShareClick,
      this.onLikeClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/quote.png",
                height: 30,
                width: 30,
                color: ColorConstants.white,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: context.dynamicHeight(0.05)),
                child: Text(
                  quote,
                  style: GoogleFonts.lato(
                    textStyle:
                        TextStyle(color: ColorConstants.white, fontSize: 30),
                  ),
                ),
              ),
              Text(
                author,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: ColorConstants.white, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: context.dynamicHeight(0.1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: onLikeClick,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 1, color: ColorConstants.white),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.favorite,
                          color: ColorConstants.white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: onShareClick,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 1, color: ColorConstants.white),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.share,
                          color: ColorConstants.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
