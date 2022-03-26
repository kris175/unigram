import 'package:flutter/material.dart';

import '../../constants.dart';

class MyEvents extends StatefulWidget {
  @override
  _MyEventsState createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            ButtonBar(
              children: [
                Icon(
                  Icons.filter_alt_outlined,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.sort,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ],
        ));
  }
}
