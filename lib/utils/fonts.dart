import 'package:flutter/material.dart';

class AppStyle {
  AppStyle._();

  static const Color primaryYellow = Color(0xfffec300);
  static const Color yellowAccent = Color(0xffe0ac02);
  static const Color primaryblack = Color(0xff000000);
  static const Color primarygrey = Color(0xffb0b0b0);
  static const Color primarywhite = Color(0xffdadada);

  static const String montserrat = 'Montserrat';

  static const headline = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w500,
    fontSize: 30,
    letterSpacing: 0,
    color: primarygrey,
  );
  static const headline2 = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w500,
    fontSize: 35,
    letterSpacing: 0,
    color: primarygrey,
  );
  static const title1 = TextStyle(
    fontFamily: montserrat,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
    color: primarygrey,
  );
  static const title2 = TextStyle(
    fontFamily: montserrat,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.2,
    color: primarywhite,
  );

  static const subtitle300 = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w300,
    fontSize: 14,
    letterSpacing: 0,
    color: primarygrey,
  );

  static const subtitle400 = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0,
    color: primarygrey,
  );

  static const subtitle700 = TextStyle(
    fontFamily: montserrat,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    letterSpacing: 0,
    color: primarygrey,
  );
}
