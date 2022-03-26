import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class TestScreen extends StatelessWidget {
  final String title;
  final Widget childCard;

  TestScreen({@required this.title, @required this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: OpenContainer(
        closedElevation: 5,
        closedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        closedBuilder: (context, openContainer) {
          return GestureDetector(
            onTap: openContainer,
            child: Container(
              child: Column(
                children: [
                  Container(
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
                  Container(
                    child: childCard,
                    alignment: Alignment.topLeft,
                  )
                ],
              ),
            ),
          );
        },
        openBuilder: (context, closeContainer) {
          return Container(
            color: kPrimaryColor,
            child: SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  title: Text(
                    title,
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  automaticallyImplyLeading: false,
                  actions: [
                    IconButton(
                        icon: Icon(Icons.close), onPressed: closeContainer)
                  ],
                ),
                body: Column(
                  children: [],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
