import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:unigram/components/calendar/year.dart';
import 'package:unigram/components/events/appointments/appointment_card.dart';
import 'package:unigram/components/events/keyDates/dates_2020.dart';

import '../../../constants.dart';

class KeyDates extends StatefulWidget {
  @override
  _KeyDatesState createState() => _KeyDatesState();
}

class _KeyDatesState extends State<KeyDates> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 5),
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
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
                      text: "2020",
                    ),
                    Tab(
                      text: "2021",
                    ),
                  ],
                  labelColor: kPrimaryColor,
                  unselectedLabelColor: kPrimaryColor,
                  indicator: MaterialIndicator(color: kPrimaryColor),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  YearLayout(
                    events: Dates.events2020,
                  ),
                  YearLayout(
                    events: Dates.events2020,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class KeyDates extends StatefulWidget {
//   @override
//   _KeyDatesState createState() => _KeyDatesState();
// }
//
// class _KeyDatesState extends State<KeyDates> {
//   List<Meeting> meetings;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SfCalendar(
//         view: CalendarView.schedule,
//         dataSource: MeetingDataSource(_getDataSource()),
//         // by default the month appointment display mode set as Indicator, we can
//         // change the display mode as appointment using the appointment display
//         // mode property
//         monthViewSettings: MonthViewSettings(
//             appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
//       ),
//     );
//   }
//
//   List<Meeting> _getDataSource() {
//     meetings = <Meeting>[];
//     final DateTime today = DateTime.now();
//     final DateTime startTime =
//         DateTime(today.year, today.month, today.day, 9, 0, 0);
//     final DateTime endTime = startTime.add(const Duration(hours: 2));
//     meetings.add(Meeting(
//         'Conference', startTime, endTime, const Color(0xFF0F8644), false));
//     return meetings;
//   }
// }
//
// /// An object to set the appointment collection data source to calendar, which
// /// used to map the custom appointment data to the calendar appointment, and
// /// allows to add, remove or reset the appointment collection.
// class MeetingDataSource extends CalendarDataSource {
//   /// Creates a meeting data source, which used to set the appointment
//   /// collection to the calendar
//   MeetingDataSource(List<Meeting> source) {
//     appointments = source;
//   }
//
//   @override
//   DateTime getStartTime(int index) {
//     return appointments[index].from;
//   }
//
//   @override
//   DateTime getEndTime(int index) {
//     return appointments[index].to;
//   }
//
//   @override
//   String getSubject(int index) {
//     return appointments[index].eventName;
//   }
//
//   @override
//   Color getColor(int index) {
//     return appointments[index].background;
//   }
//
//   @override
//   bool isAllDay(int index) {
//     return appointments[index].isAllDay;
//   }
// }
//
// /// Custom business object class which contains properties to hold the detailed
// /// information about the event data which will be rendered in calendar.
// class Meeting {
//   /// Creates a meeting class with required details.
//   Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);
//
//   /// Event name which is equivalent to subject property of [Appointment].
//   String eventName;
//
//   /// From which is equivalent to start time property of [Appointment].
//   DateTime from;
//
//   /// To which is equivalent to end time property of [Appointment].
//   DateTime to;
//
//   /// Background which is equivalent to color property of [Appointment].
//   Color background;
//
//   /// IsAllDay which is equivalent to isAllDay property of [Appointment].
//   bool isAllDay;
// }
