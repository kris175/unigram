import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class UrlCard extends StatelessWidget {
  final String title;
  final String description;
  final String url;
  UrlCard({this.title, this.description, this.url});

  _launchURL() async {
    print('Launch url pressed');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: _launchURL,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: kElevationToShadow[4],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: kPrimaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title.toUpperCase(),
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      Icon(
                        Icons.open_in_new,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  description,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
