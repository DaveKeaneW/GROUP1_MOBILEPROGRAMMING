import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesgit/menupizza.dart';

class PepperoniPizza extends StatelessWidget {
  const PepperoniPizza ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.white,
          title: Text('Pepperoni Pizza',
          style: TextStyle(
            fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
            fontSize: 30,
            color: Colors.black,
           ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
            color: Colors.black,
            size: 32,
            ),
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => MenuPizza()),
              );
            },
          ),
        ),
        body: ListView(children: [
          MargaritaPizza1(),
        ],
        ),
      ), 
      );
  }
}


class MargaritaPizza1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 725,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFF201520),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xFF201520),
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
                left: 51,
                top: 363,
                child: SizedBox(
                  width: 304,
                  height: 80,
                  child: Text(
                    'Pepperoni made from beef and cured pork mixed together and then seasoned with a blend that usually includes paprika, garlic, black pepper, crushed red pepper, cayenne pepper, mustard seed, and fennel seed.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 100,
                top: 475,
                child: Container(
                  width: 200,
                  height: 100,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 3,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 32,
                                offset: Offset(0, 16),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 38,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 32,
                                offset: Offset(0, 16),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 73,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 32,
                                offset: Offset(0, 16),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 0,
                        child: Container(
                          width: 185,
                          height: 25,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 165,
                                  height: 25,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 32,
                                        offset: Offset(0, 16),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -5,
                                top: 4,
                                child: SizedBox(
                                  width: 175,
                                  child: Text(
                                    'Rp.100.000 (Personal)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
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
                        left: 32,
                        top: 35,
                        child: Container(
                          width: 175,
                          height: 25,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 165,
                                  height: 25,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -8,
                                top: 4,
                                child: SizedBox(
                                  width: 175,
                                  child: Text(
                                    'Rp.125.000 (Regular)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
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
                        left: 32,
                        top: 70,
                        child: Container(
                          width: 175,
                          height: 28,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 165,
                                  height: 25,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -13,
                                top: 4,
                                child: SizedBox(
                                  width: 175,
                                  child: Text(
                                    'Rp.145.000 (Large)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Inter',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 622.5,
                child: Container(
                  width: 299,
                  height: 59,
                  decoration: ShapeDecoration(
                    color: Color(0xFF533556),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                    
                      
                      
                    
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 630,
                child: Container(
                  width: 276,
                  height: 42,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 276,
                          height: 42,
                          decoration: ShapeDecoration(
                            color: Colors.white.withOpacity(0),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(45),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 22.38,
                        top: 12,
                        child: SizedBox(
                          width: 231.24,
                          height: 28,
                          child: Text(
                            'ADD TO CART',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
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
                left: 40, //tambah 10
                top: 45,
                child: Container(
                  width: 330,
                  height: 313,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/meat.png'),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF201520),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 61,
                child: Container(
                  width: 30,
                  height: 30,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                ),
              ),
             
            ],
          ),
        ),
      ],
    );
  }
}