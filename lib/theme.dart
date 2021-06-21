import 'package:flutter/material.dart';
  
  var lightThemeData = new ThemeData(
      primaryColor: Colors.white,
      textTheme: new TextTheme(button: TextStyle(color: Color(0xFF171717))),
      brightness: Brightness.light,
      fontFamily: "OpenSans",
      accentColor: Color(0xFF037FFD));
  
  var darkThemeData = ThemeData(
      primaryColor: Color(0xFF171717),
      textTheme: new TextTheme(button: TextStyle(color: Colors.white)),
      brightness: Brightness.dark,
      fontFamily: "OpenSans",
      accentColor: Color(0xFF037FFD));