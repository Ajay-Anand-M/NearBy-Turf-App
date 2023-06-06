import 'package:flutter/material.dart';
import 'package:nearbyturfs/TurfHomeScreen.dart';
import 'package:nearbyturfs/screens/Login/login.dart';
import 'package:nearbyturfs/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:themes(),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

