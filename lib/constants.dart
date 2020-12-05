import 'package:flutter/material.dart';

const Color kThemeColor = Color(0xFF29C8F0);

const kInputDecoration = InputDecoration(
  hintText: 'Enter the value',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color:  kThemeColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kThemeColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

var kProfileBoxDecoration = BoxDecoration(

  color: kThemeColor.withAlpha(50),
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(70.0),
    topRight: Radius.circular(70.0),
    bottomLeft: Radius.circular(10.0),
    bottomRight: Radius.circular(10.0),
  ),
);

