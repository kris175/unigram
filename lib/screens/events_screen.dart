import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:unigram/components/events/keyDates/key_dates_events.dart';
import 'package:unigram/components/events/my_events.dart';
import 'package:unigram/components/events/upcoming_events.dart';
import 'package:unigram/constants.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 5),
      child: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: TabBar(
                  tabs: [
                    Tab(
                      text: "UPCOMING",
                    ),
                    Tab(
                      text: "MY EVENTS",
                    ),
                    Tab(
                      text: "KEY DATES",
                    ),
                  ],
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: RectangularIndicator(
                    bottomLeftRadius: 20,
                    bottomRightRadius: 20,
                    topLeftRadius: 20,
                    topRightRadius: 20,
                    color: kPrimaryColor,
                    verticalPadding: 10,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              indent: 50,
              endIndent: 50,
              thickness: 1,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  UpcomingEvents(),
                  MyEvents(),
                  KeyDates(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
