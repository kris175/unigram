import 'package:flutter/material.dart';
import 'package:unigram/screens/clubs_screen.dart';
import 'package:unigram/screens/events_screen.dart';
import 'package:unigram/screens/home_page_screen.dart';
import 'package:unigram/screens/quick_links_screen.dart';

import 'base.dart';

void main() => runApp(Unigram());

class Unigram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => BasePage(),
        '/quickLinks': (context) => QuickLinks(),
        '/homePage': (context) => HomePage(),
        '/eventsPage': (context) => EventsPage(),
        '/clubsPage': (context) => ClubsPage(),
      },
      theme:
          ThemeData(primaryColor: Color(0xFF094183), accentColor: Colors.white),
    );
  }
}
