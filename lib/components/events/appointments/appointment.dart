import 'package:flutter/material.dart';

class Appointment {
  String _eventName;
  List<String> _eventDescriptions;
  String _registrationUrl;
  DateTime _from;
  DateTime _to;
  Color _background;
  bool _isSingleDay = false;
  String _backgroundImagePath;

  Appointment(
      {String eventName,
      List<String> eventDescriptions,
      String registrationUrl,
      DateTime from,
      DateTime to,
      Color background,
      String backgroundImagePath,
      bool isSingleDay}) {
    this._eventName = eventName;
    this._eventDescriptions = eventDescriptions;
    this._registrationUrl = registrationUrl;
    this._from = from;
    this._to = to;
    this._background = background;
    this._isSingleDay = isSingleDay;
    this._backgroundImagePath = backgroundImagePath;
  }

  String get eventName => _eventName;

  String get backgroundImagePath => _backgroundImagePath;

  bool get isSingleDay => _isSingleDay;

  Color get background => _background;

  DateTime get to => _to;

  DateTime get from => _from;

  String get registrationUrl => _registrationUrl;

  List<String> get eventDescriptions => _eventDescriptions;
}
