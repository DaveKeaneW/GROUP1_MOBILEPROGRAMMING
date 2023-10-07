import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tesgit/pagesDave/pagesdave.dart';
<<<<<<< HEAD
import 'package:tesgit/tampilanawal.dart';
import 'package:tesgit/welcome.dart';
=======
import 'package:tesgit/welcome.dart';
import 'tampilanawal.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';
>>>>>>> 023e1e7ad4ee8c7f2b46257fc38a026643856d37

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home : WellcomePage(),
=======
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen(),
        );
      }),
>>>>>>> 023e1e7ad4ee8c7f2b46257fc38a026643856d37
    );
  }
}
