import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unigram/constants.dart';

class TitleWidget extends StatelessWidget {
  final String titleText;

  TitleWidget({@required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 5),
          child: Text(
            titleText,
            style: GoogleFonts.frankRuhlLibre(
              textStyle: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Divider(
          color: kSecondaryColor,
          thickness: 1.5,
        ),
      ],
    );
  }
}
