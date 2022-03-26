import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unigram/components/events/appointments/appointment.dart';
import 'package:unigram/components/events/appointments/appointment_card.dart';
import 'package:unigram/components/events/keyDates/dates_2020.dart';

class MonthLayout extends StatelessWidget {
  final String monthName;
  final String imgName;
  final List<Appointment> events;
  final List<Widget> aptCards = <Widget>[];

  MonthLayout({this.monthName, this.imgName, this.events}) {
    alocateApts();
  }

  void alocateApts() {
    events.forEach((element) {
      aptCards.add(AptCard(apt: element));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kElevationToShadow[4],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        monthName,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/images/$imgName.png',
                      scale: 4,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: aptCards,
            )
          ],
        ),
      ),
    );
  }
}
