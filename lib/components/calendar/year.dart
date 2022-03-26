import 'dart:collection';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:unigram/components/calendar/month.dart';
import 'package:unigram/components/events/appointments/appointment.dart';

LinkedHashMap monthlyEvents = LinkedHashMap<String, List<Appointment>>();

class YearLayout extends StatelessWidget {
  final List<Appointment> events;

  YearLayout({this.events});

  void initMap() {
    monthlyEvents['January'] = <Appointment>[];
    monthlyEvents['February'] = <Appointment>[];
    monthlyEvents['March'] = <Appointment>[];
    monthlyEvents['April'] = <Appointment>[];
    monthlyEvents['May'] = <Appointment>[];
    monthlyEvents['June'] = <Appointment>[];
    monthlyEvents['July'] = <Appointment>[];
    monthlyEvents['August'] = <Appointment>[];
    monthlyEvents['September'] = <Appointment>[];
    monthlyEvents['October'] = <Appointment>[];
    monthlyEvents['November'] = <Appointment>[];
    monthlyEvents['December'] = <Appointment>[];
  }

  void sortEvents() {
    initMap();
    events.forEach((element) {
      // group by month
      List<Appointment> eventList =
          monthlyEvents[DateFormat.MMMM().format(element.from)];
      eventList.add(element);
    });
  }

  @override
  Widget build(BuildContext context) {
    sortEvents();

    return ListView(
      children: [
        MonthLayout(
          monthName: 'January',
          imgName: 'sunlight',
          events: monthlyEvents['January'],
        ),
        MonthLayout(
          monthName: 'February',
          imgName: 'airport',
          events: monthlyEvents['February'],
        ),
        MonthLayout(
          monthName: 'March',
          imgName: 'education',
          events: monthlyEvents['March'],
        ),
        MonthLayout(
          monthName: 'April',
          imgName: 'completed_task',
          events: monthlyEvents['April'],
        ),
        MonthLayout(
          monthName: 'May',
          imgName: 'online_collab',
          events: monthlyEvents['May'],
        ),
        MonthLayout(
          monthName: 'June',
          imgName: 'work_time',
          events: monthlyEvents['June'],
        ),
        MonthLayout(
          monthName: 'July',
          imgName: 'graduation',
          events: monthlyEvents['July'],
        ),
        MonthLayout(
          monthName: 'August',
          imgName: 'winter_road',
          events: monthlyEvents['August'],
        ),
        MonthLayout(
          monthName: 'September',
          imgName: 'taking_notes',
          events: monthlyEvents['September'],
        ),
        MonthLayout(
          monthName: 'October',
          imgName: 'project_team',
          events: monthlyEvents['October'],
        ),
        MonthLayout(
          monthName: 'November',
          imgName: 'working_from_anywhere',
          events: monthlyEvents['November'],
        ),
        MonthLayout(
          monthName: 'December',
          imgName: 'contemplating',
          events: monthlyEvents['December'],
        ),
      ],
    );
  }
}
