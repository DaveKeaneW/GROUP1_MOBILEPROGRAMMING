import 'package:tesgit/pagesDave/pagesdave.dart';

import 'welcome.dart';
import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  const StartApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: SplashScreen(), // Gunakan SplashScreen sebagai home page awal
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tambahkan durasi tampilan awal (contoh: 3 detik)
    Future.delayed(Duration(seconds: 3), () {
      // Navigasi ke halaman berikutnya setelah durasi tertentu (contoh: 3 detik)
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WellcomePage()), // Gunakan widget dari file next_page.dart
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 415,
            height: 867.400,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFF201520),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Colors.white,
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x02374151),
                  blurRadius: 48,
                  offset: Offset(6, 7),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  left: -30,
                  top: 0,
                  child: Container(
                    width: 240,
                    height: 750,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/buger1.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 210,
                  top: 0,
                  child: Container(
                    width: 200,
                    height: 750,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/pija1.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -40,
                  top: 590,
                  child: Container(
                    width: 472,
                    height: 239,
                    decoration: ShapeDecoration(
                      color: Color(0xFF201520),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 140,
                  top: 825,
                  child: Container(
                    width: 134,
                    height: 13,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/resap.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 100,
                  top: 650,
                  child: Container(
                    width: 197,
                    height: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -5,
                  top: 750,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-0.20),
                    child: Container(
                      width: 418.24,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFEFE3C8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 700,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(0.30),
                    child: Container(
                      width: 428.78,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFEFE3C8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


