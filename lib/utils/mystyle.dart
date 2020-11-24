import 'package:flutter/material.dart';

class Mystyle {
  static const Color primarycolo = Color(0xFF662e93); //#662e93
  static const Color secondrycolo = Color(0xFF042f73); // #042f73

  static const Color thirdcolo = Color(0xFF20333F); // #20333F

  static const Color orangee = Color(0xFFff8d57); //#ff8d57

  static const String primaryfont = "Tajawal";
  static const String secondryfont = "diwani";

  //

  static TextStyle titleTextStyle = TextStyle(
    color: secondrycolo,
    fontFamily: primaryfont,
    fontWeight: FontWeight.w800,
    fontSize: 32,
  );

  static TextStyle subTitleTextStyle = TextStyle(
    color: thirdcolo,
    fontFamily: primaryfont,
    fontWeight: FontWeight.w400,
    fontSize: 22,
  );

  static TextStyle stylishTitleTextStyle = TextStyle(
    color: thirdcolo,
    fontFamily: secondryfont,
    fontWeight: FontWeight.w400,
    fontSize: 22,
  );

  static TextStyle subTextTextStyle = TextStyle(
    color: thirdcolo,
    fontFamily: primaryfont,
    fontSize: 16,
  );

  static TextStyle regularTextStyleW = TextStyle(
    color: Colors.white,
    fontFamily: primaryfont,
    fontSize: 16,
  );
  static TextStyle regularTextStyle = TextStyle(
    color: secondrycolo,
    fontFamily: primaryfont,
    fontSize: 16,
  );

  static TextStyle placeholderTextStyle = TextStyle(
    color: secondrycolo,
    fontFamily: primaryfont,
    fontSize: 14,
  );

  static inputDecoration({String hint, Widget icon = null}) {
    return InputDecoration(
        labelText: '$hint',
        labelStyle: placeholderTextStyle,
        suffixIcon: icon ?? icon,
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: secondrycolo, width: 1)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primarycolo, width: 1)));
  }
}
