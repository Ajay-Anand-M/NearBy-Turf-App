import 'package:flutter/material.dart';

ThemeData themes() {
  return ThemeData(
      primaryColor: Colors.deepPurple,
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.amberAccent,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.deepPurple,
      ));
}
