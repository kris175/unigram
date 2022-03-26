import 'package:unigram/components/quickLinks/urlCard.dart';

class LinkCollection {
  List<UrlCard> _linkCards = [
    UrlCard(
      title: 'Stop 1: Book an appointment',
      description:
          'Book a one-on-one virtual or phone appointment. Appointments are available for general enquiries or individual support from one of our many student services.',
      url: 'https://qflow.unimelb.edu.au/UOMOASIS/Home/IndexNew',
    ),
    UrlCard(
      title: 'Stop 1: Submit an enquiry',
      description: 'Submit an enquiry or update an existing enquiry.',
      url: 'https://ask.unimelb.edu.au/app/ask?enquiry',
    ),
    UrlCard(
      title: 'Stop 1: Chat online',
      description:
          'Chat one-on-one with one of our Stop 1 advisers. \nChat hours: \nMonday to Wednesday: 9am – 5pm \nThursday and Friday: 10am – 5pm \nLast chat requests close at 4.30pm ',
      url: 'https://ask.unimelb.edu.au/app/ask?chat',
    ),
    UrlCard(
      title: 'Handbook',
      description:
          'The University of Melbourne’s official source of course and subject information',
      url: 'https://handbook.unimelb.edu.au/search',
    ),
    UrlCard(
      title: 'Ask.unimelb',
      description: 'Ask a question, search, or browse through relevant FAQs.',
      url: 'https://ask.unimelb.edu.au/app/home',
    ),
    UrlCard(
      title: 'My.unimelb',
      description:
          'My.unimelb is the University’s main student portal. It provides a single place for you to access all the information you need.',
      url: 'https://my.unimelb.edu.au/',
    ),
    UrlCard(
      title: 'Graduate Research Hub',
      description:
          'Guides for all graduate researchers, resources and information from orientation to graduation.',
      url: 'https://gradresearch.unimelb.edu.au/',
    ),
  ];

  List<UrlCard> getLinkCards() {
    return _linkCards;
  }
}

// QuickLinkCard(
// title: 'Stop 1',
// description:
// 'Stop 1 can connect you with the full range of student services to support your success while studying at the University',
// cardContent: [
// Expanded(
// child: ListView(
// padding: EdgeInsets.all(10),
// children: [
// Container(
// margin: EdgeInsets.all(10),
// child: Text(
// 'Connect with the full range of student services to support your success while studying at the University'),
// ),
// UrlCard()
// ],
// ),
// ),
// ],
// ),
// QuickLinkCard(
// title: 'Handbook',
// description:
// 'The University of Melbourne’s official source of course and subject information',
// cardContent: [],
// ),
// QuickLinkCard(
// title: 'My.unimelb',
// description:
// 'My.unimelb is the University’s main student portal. It provides a single place for you to access all the information you need',
// cardContent: [],
// ),
// QuickLinkCard(
// title: 'LMS',
// description:
// 'Information and support for the University’s centrally-supported Learning Management System (LMS)',
// cardContent: [],
// ),
// QuickLinkCard(
// title: 'Ask.unimelb',
// description: 'Ask a question or browse through relevant FAQs',
// cardContent: [],
// ),
