import 'package:flutter/material.dart';
import 'package:tesgit/home_screen.dart';
import 'package:tesgit/pagesDave/pagesdave.dart';
import 'package:tesgit/welcome.dart';
import 'tampilanawal.dart';

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

      home : SplashScreen(),
    );
  }
}

