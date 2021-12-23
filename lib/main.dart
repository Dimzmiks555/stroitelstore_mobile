import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stroitelstore/constants.dart';
import 'package:stroitelstore/routes.dart';
import 'package:stroitelstore/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: kTextColor),
              bodyText2: TextStyle(color: kTextColor))),
      // home: HomeScreen(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
