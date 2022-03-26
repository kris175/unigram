import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:unigram/constants.dart';

import 'appointment.dart';

class AptCard extends StatelessWidget {
  final Appointment apt;
  final List<Widget> dateWidget = <Widget>[];

  AptCard({@required this.apt}) {
    dateWidget.add(
      Text(
        DateFormat.MMMMd().format(apt.from),
        style: GoogleFonts.rubik(
          textStyle: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
    if (apt.to != null) {
      dateWidget.add(Text('to'));
      dateWidget.add(Text(
        DateFormat.MMMMd().format(apt.to),
        style: GoogleFonts.rubik(
          textStyle: TextStyle(fontWeight: FontWeight.w600),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey,
          indent: 50,
          endIndent: 50,
          thickness: 1,
        ),
        SizedBox(
          width: double.infinity,
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {0: FlexColumnWidth(1), 1: FlexColumnWidth(2)},
            border: TableBorder.symmetric(
              inside: BorderSide(width: 1.0, color: Colors.grey),
            ),
            children: [
              TableRow(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: dateWidget,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 15, top: 10, right: 10, bottom: 10),
                    child: Center(
                      child: Text(
                        apt.eventName,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(fontSize: 15.5),
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
