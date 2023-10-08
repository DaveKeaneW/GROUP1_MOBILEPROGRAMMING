import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesgit/home_screen.dart';


class enjoy extends StatelessWidget {
  const enjoy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          KanePunya(),
          Image.asset(
            'images/Safe Food.png', 
            width: 300, 
            height: 300, 
          ),
        ]),
      ),
    );
  }
}

class KanePunya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 843,
          decoration: BoxDecoration(color: Color(0xFF201520)),
          child: Stack(
            children: [
              Image.asset(
                'images/Safe Food.png', 
                width: 400,
                height: 700,
              ),
              Positioned(
                left: 115,
                top: 547,
                child: Text(
                  'Enjoy Your Food !',
                  style: TextStyle(
                    color: Color(0xFFDBB98A),
                    fontSize: 24,
                    fontFamily: GoogleFonts.rosarivo().fontFamily,
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 139,
                child: Container(
                  width: 500,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFFDD7A2),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 21,
                top: 13,
                child: Container(
                  width: 163,
                  height: 115,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 95.47,
                          height: 58,
                          child: Text(
                            'déjà',
                            style: TextStyle(
                              color: Color(0x7FEFE2C8),
                              fontSize: 40,
                              fontFamily: GoogleFonts.rosarivo().fontFamily,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 24,
                        top: 39,
                        child: SizedBox(
                          width: 139,
                          height: 76,
                          child: Text(
                            'Brew',
                            style: TextStyle(
                              color: Color(0xFFEFE3C8),
                              fontSize: 52,
                              fontFamily: GoogleFonts.rosarivo().fontFamily,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 687,
                child: SizedBox(
                  width: 283,
                  child: Text(
                    'Your food is arrived, please enjoy !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF666C7A),
                      fontSize: 16,
                      fontFamily: GoogleFonts.rosarivo().fontFamily,
                      fontWeight: FontWeight.w500,
                      height: 0.08,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 85, //NEXT
                top: 750,
                child: SizedBox(
                  width: 260,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2E1E2E), 
                    ),
                    child: Text(
                      'Back To Home ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: GoogleFonts.rosarivo().fontFamily,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),  
            ],
          ),
        ),
      ],
    ); 
  }
}
