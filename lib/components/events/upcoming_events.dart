import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unigram/components/reusable_card.dart';
import 'package:unigram/constants.dart';

class UpcomingEvents extends StatefulWidget {
  @override
  _UpcomingEventsState createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: GlowingOverscrollIndicator(
              color: kSecondaryColor,
              axisDirection: AxisDirection.down,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                children: [
                  ReusableCard(
                    title: 'Orientation Day',
                    childCard: Container(
                      child: Text('data'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
