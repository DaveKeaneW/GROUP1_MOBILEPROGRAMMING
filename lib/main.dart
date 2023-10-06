import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tesgit/home_screen.dart';
import 'package:tesgit/pagesDave/pagesdave.dart';
import 'package:tesgit/tampilanawal.dart';
import 'package:tesgit/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
