import 'package:flutter/material.dart';

class CustomTheme {
  static const Color grey = Color(0xffDFDFDF);
  static const Color purple = Color(0xff800080);
  static const Color blue = Color(0xff000080);
  static const Color yellow = Color(0xffFFD847);
  static const cardShadow = [
    BoxShadow(color: grey, blurRadius: 6, spreadRadius: 4, offset: Offset(0, 2))
  ];

  static getCardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(35),
      boxShadow: cardShadow,
    );
  }

  static const buttonShadow = [
    BoxShadow(color: blue, blurRadius: 1, spreadRadius: 4, offset: Offset(1, 3))
  ];

  static ThemeData getTheme() {
    Map<String, double> fontSize = {
      "sm": 14,
      "md": 18,
      "lg": 24,
    };
    return ThemeData(
        primaryColor: purple,
        fontFamily: 'DMSans',
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            toolbarHeight: 70,
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'DMSans',
                fontSize: fontSize['lg'],
                fontWeight: FontWeight.bold,
                letterSpacing: 4)),
        tabBarTheme: const TabBarTheme(
            labelColor: purple, unselectedLabelColor: Colors.black),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
              color: Colors.black,
              fontSize: fontSize['lg'],
              fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(
              color: Colors.black,
              fontSize: fontSize['md'],
              fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(
              color: Colors.black,
              fontSize: fontSize['sm'],
              fontWeight: FontWeight.bold),
          bodySmall: TextStyle(
              fontSize: fontSize['sm'], fontWeight: FontWeight.normal),
          titleSmall: TextStyle(
              color: Colors.white, fontSize: fontSize['sm'], letterSpacing: 1),
        ));
  }
}
