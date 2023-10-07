import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tesgit/home_screen.dart';
import 'package:tesgit/pagesDave/pagesdave.dart';
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:tesgit/welcome.dart';
import 'tampilanawal.dart';

void main() {
=======
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
>>>>>>> b9b6b249fa4a224dc5a525abd3fa250bc5872a96
=======
import 'package:tesgit/tampilanawal.dart';
import 'package:tesgit/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
>>>>>>> 5388674f9a65e4ef704368a88984081b07a02dde
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
<<<<<<< HEAD

      home : SplashScreen(),
=======
      home: WellcomePage()
>>>>>>> b9b6b249fa4a224dc5a525abd3fa250bc5872a96
=======

      home : SplashScreen(),
    );
  }
}
