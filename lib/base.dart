import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unigram/constants.dart';
import 'package:unigram/screens/clubs_screen.dart';
import 'package:unigram/screens/events_screen.dart';
import 'package:unigram/screens/home_page_screen.dart';
import 'package:unigram/screens/quick_links_screen.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ClubsPage(),
    EventsPage(),
    QuickLinks(),
  ];
  List<String> _titleOptions = [
    'HOME',
    'CLUBS',
    'EVENTS',
    'QUICK LINKS',
  ];

  int currentSelection = 0;

  void _onTap(int index) {
    setState(() {
      currentSelection = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   title: Text(_titleOptions[currentSelection]),
          //   backgroundColor: kSecondaryColor,
          // ),
          bottomNavigationBar: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: kSecondaryColor,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedLabelStyle: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: 12,
                ),
              ),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.group), label: 'Groups'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.event), label: 'EVENTS'),
                BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
              ],
              currentIndex: currentSelection,
              onTap: _onTap,
            ),
          ),
          body: _widgetOptions.elementAt(currentSelection),
        ),
      ),
    );
  }
}
