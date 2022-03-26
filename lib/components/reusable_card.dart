import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class ReusableCard extends StatelessWidget {
  final String title;
  final Widget childCard;

  ReusableCard({@required this.title, @required this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kElevationToShadow[4],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: kPrimaryColor,
              child: Text(
                title,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: childCard,
          )
        ],
      ),
    );
  }
}
