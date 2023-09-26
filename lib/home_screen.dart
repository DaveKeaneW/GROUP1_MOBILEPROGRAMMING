import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesgit/menuburger.dart';
import 'package:tesgit/menupizza.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff201520)),
          color: const Color(0xff201520),
          boxShadow: const [
            BoxShadow(
              color: Color(0x02374151),
              offset: Offset(6, 7),
              blurRadius: 24,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 260,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Align(
                      child: SizedBox(
                        width: 506,
                        height: 145,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff3e2e3e),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 330,
                    top: 40,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff3e2e3e)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(21.999),
                              ),
                              child: Image.asset('images/user.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 135,
                    child: Align(
                      child: SizedBox(
                        width: 450,
                        height: 5,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff201520),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 200,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 16, 150, 15),
                      width: 322,
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color(0xff2e1e2e),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 1),
                            width: 20.13,
                            height: 20,
                            child: Image.asset('images/search.png'),
                          ),
                          Text(
                            'Find a Food',
                            style: TextStyle(
                              fontFamily: GoogleFonts.irishGrover().fontFamily,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.21,
                              color: const Color(0x7fffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 35,
                    child: Align(
                      child: SizedBox(
                        width: 77,
                        height: 57,
                        child: Text(
                          'déjà',
                          style: TextStyle(
                            fontFamily: GoogleFonts.rosarivo().fontFamily,
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            height: 1.405,
                            color: const Color(0xffe9cf94),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 70,
                    child: Align(
                      child: SizedBox(
                        width: 125,
                        height: 74,
                        child: Text(
                          'Brew',
                          style: TextStyle(
                            fontFamily: GoogleFonts.rosarivo().fontFamily,
                            fontSize: 52,
                            fontWeight: FontWeight.w400,
                            height: 1.405,
                            color: const Color(0xffefe3c8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86.5,
                    top: 156,
                    child: Align(
                      child: SizedBox(
                        width: 196,
                        height: 80,
                        child: Text(
                          'Our Menu',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: GoogleFonts.inriaSerif().fontFamily,
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            height: 1.2575,
                            color: const Color(0xffeacf94),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                    width: double.infinity,
                    height: 151,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuBurger(),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            width: 148,
                            height: 151,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Align(
                                    child: SizedBox(
                                      width: 148,
                                      height: 151,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color(0xff3e2e3e),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 34.5,
                                  top: 0,
                                  child: Align(
                                    child: SizedBox(
                                      width: 80,
                                      height: 36,
                                      child: Text(
                                        'Burger',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: GoogleFonts.irishGrover().fontFamily,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 1,
                                  top: 15,
                                  child: Align(
                                    child: SizedBox(
                                      width: 148,
                                      height: 139,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset('images/burger.png', fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MenuPizza(),
                            ),
                           );
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          width: 148,
                          height: 151,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 148,
                                    height: 151,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color(0xff3e2e3e),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 34.5,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 80,
                                    height: 36,
                                    child: Text(
                                      'Pizza',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.irishGrover().fontFamily,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: const Color(0x0ffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 20,
                                child: Align(
                                  child: Transform.rotate(
                                  angle: 5.5,
                                  child: SizedBox(
                                    width: 148,
                                    height: 129,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset('images/pizza.png',
                                      fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                 ),
                                
                                )
                                ),
                               ],
                              ),
                           ),
                          ),
                         ],
                        ),
                       ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    width: double.infinity,
                    height: 151,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          width: 148,
                          height: 151,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 148,
                                    height: 142,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color(0xff3e2e3e),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 17,
                                top: 4,
                                child: Align(
                                  child: SizedBox(
                                    width: 115,
                                    height: 36,
                                    child: Text(
                                      'Spaghetti',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.irishGrover().fontFamily,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 18,
                                child: Align(
                                  child: SizedBox(
                                    width: 145,
                                    height: 133,
                                    child: Image.asset('images/spaghetti.png',
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 148,
                          height: 151,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                    width: 148,
                                    height: 142,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color(0xff3e2e3e),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 41.5,
                                top: 4,
                                child: Align(
                                  child: SizedBox(
                                    width: 66,
                                    height: 36,
                                    child: Text(
                                      'Snack',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.irishGrover().fontFamily,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9,
                                top: 20,
                                child: Align(
                                  child: SizedBox(
                                    width: 130,
                                    height: 124,
                                    child: Image.asset('images/snack.png',
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(125, 20, 125.58, 30),
                    width: double.infinity,
                    height: 151,
                    decoration: BoxDecoration(
                      color: const Color(0xff3e2e3e),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 37,
                          top: 7,
                          child: Align(
                            child: SizedBox(
                              width: 69,
                              height: 36,
                              child: Text(
                                'Drinks',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: GoogleFonts.irishGrover().fontFamily,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 23,
                          top: 42,
                          child: Align(
                            child: SizedBox(
                              width: 104,
                              height: 91,
                              child: Image.asset('images/drinks.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        );
  }
}
