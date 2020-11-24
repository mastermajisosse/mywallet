import 'package:flutter/material.dart';

class Style {
  // colors
  static final Color primaryColor = Color(0xFF17dfe6); // #17dfe6
  // static final Color darkColor = Color(0xFF0099ca); // #0099ca
  static final Color darkColor = Color(0xFF042f73); // #042f73

  static const TextStyle slideTitleStyle = TextStyle(
    fontFamily: 'Roboto',
    color: Color(0xFF121212), // #17dfe6
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );

  static TextStyle slideSubtitleStyle = new TextStyle(
    fontFamily: 'Roboto',
    color: Colors.black87, // #17dfe6
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static BoxDecoration caroDecoration = BoxDecoration(
    color: primaryColor,
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  );

  static BoxDecoration noDecoration = BoxDecoration(
    color: primaryColor.withOpacity(.2),
  );

  static BoxDecoration clippath = BoxDecoration(
    gradient: LinearGradient(
      colors: [darkColor, primaryColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomCenter,
    ),
    color: darkColor,
  );
}
