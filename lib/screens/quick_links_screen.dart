import 'package:flutter/material.dart';
import 'package:unigram/components/quickLinks/linkCollection.dart';

class QuickLinks extends StatelessWidget {
  List<Widget> addCards() {
    List<Widget> cards = LinkCollection().getLinkCards();
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(children: addCards()),
          )
        ],
      ),
    );
  }
}
