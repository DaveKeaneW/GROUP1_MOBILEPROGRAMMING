import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesgit/home_screen.dart';
import 'package:tesgit/lemon.dart';
import 'package:tesgit/lycheetea.dart';
import 'package:tesgit/orangeblush.dart';
import 'package:tesgit/stroberi.dart';
import 'package:tesgit/thaitea.dart';

class MenuDrinks extends StatelessWidget {
  const MenuDrinks({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 120,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
          //JUDUL MINUMAN
          title: Text(
            'Drinks',
            style: TextStyle(
              fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
              fontSize: 28,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(children: [
          MenuDrinksPage1(),
        ]),
      ),
    );
  }
}

class MenuDrinksPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 415,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFF201520),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Color(0xff201520),
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
                left: 170,
                top: 38,
                child: Text(
                  'SouthWest Burger', //JUDUL 1
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 58,
                child: SizedBox(
                  width: 209,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'These southwest chicken burgers are made with diced red bell pepper, shallots, and southwest spices, and pack a ton of flavor. Assembled and cooked in under 20 minutes.', //DESC 1
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\nRp.50.000', //HARGA 1
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 175,
                child: Text(
                  'Bacon Swiss Burger', //JUDUL 2
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 195,
                child: SizedBox(
                  width: 216,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Step up your burger game with some extra toppings: sautéed mushrooms and onions, crispy bacon, Swiss cheese, and barbeque sauce.', //DESC 2
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.5,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\nRp.55.000', //HARGA 2
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 472,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A Double Cheeseburger consists of two 1.6\noz. beef patties, two slices of American  \ncheese, a sesame seed bun, ketchup, pickle \nslices, onions, and mustard.', // DESC 4
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Text(
                      '\nRp.43.000', //HARGA 4
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 170,
                top: 309,
                child: Text(
                  'Pulled Pork Burger', //JUDUL 3
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 448,
                child: Text(
                  'Cheese Burger', //JUDUL 4
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 580,
                child: Text(
                  'Beef Burger', // JUDUL 5
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 335,
                child: SizedBox(
                  width: 225,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Pulled Pork Burger is a smoky, sweetand spicy burger that is sure to be a hit at your next cookout! This burger is packed withflavor', //DESC 3
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\nRp.67.000', // HARGA 3
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
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
              Positioned(
                left: 310,
                top: 255,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => lycheetea(),
                      ),
                    );
                  },
                  child: Container(
                    width: 37,
                    height: 18,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 37,
                            height: 18,
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 3,
                          top: 3,
                          child: SizedBox(
                            width: 31,
                            height: 12,
                            child: Text(
                              'ADD',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
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
              ),
              Positioned(
                left: 310, //ADD BUTTON 1
                top: 135,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => stroberi(),
                      ),
                    );
                  },
                  child: Container(
                    width: 37,
                    height: 18,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 37,
                            height: 18,
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 3,
                          top: 3,
                          child: SizedBox(
                            width: 31,
                            height: 12,
                            child: Text(
                              'ADD',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
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
              ),
              Positioned(
                left: 310, //ADD BUTTON 3
                top: 389,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => lemon(),
                      ),
                    );
                  },
                  child: Container(
                    width: 37,
                    height: 18,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 37,
                            height: 18,
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 3,
                          top: 3,
                          child: SizedBox(
                            width: 31,
                            height: 12,
                            child: Text(
                              'ADD',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
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
              ),
              Positioned(
                left: 310, //ADD BUTTON 5
                top: 665,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => orange(),
                      ),
                    );
                  },
                  child: Container(
                    width: 37,
                    height: 18,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 37,
                            height: 18,
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 3,
                          top: 3,
                          child: SizedBox(
                            width: 31,
                            height: 12,
                            child: Text(
                              'ADD',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
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
              ),
              Positioned(
                left: 310, // ADD BUTTON 4
                top: 535,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => thaitea(),
                      ),
                    );
                  },
                  child: Container(
                    width: 37,
                    height: 18,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 37,
                            height: 18,
                            decoration: ShapeDecoration(
                              color: Colors.white.withOpacity(0),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 3,
                          top: 3,
                          child: SizedBox(
                            width: 31,
                            height: 12,
                            child: Text(
                              'ADD',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
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
              ),
              Positioned(
                left: 170,
                top: 605,
                child: SizedBox(
                  width: 225,
                  height: 90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A beef burger consists of two beef patties, two slices of American cheese, a sesame seed bun, ketchup, pickle slices, onions, and mustard..', //DESC 5
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\nRp.45.000', //HARGA 5
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 40,
                child: Container(
                  width: 115,
                  height: 106,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("images/southwestburger.png"), //GAMBAR 1
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 175,
                child: Container(
                  width: 115,
                  height: 106,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("images/bacoswissburger.png"), // GAMBAR 2
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 310,
                child: Container(
                  width: 115,
                  height: 106,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("images/pulledporkburger.png"), //GAMBAR 3
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 450,
                child: Container(
                  width: 115,
                  height: 106,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/cheeseburger.png"),
                      fit: BoxFit.fill, // GAMBAR 4
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 580,
                child: Container(
                  width: 120,
                  height: 106,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/beefburger.jpg"),
                      fit: BoxFit.fill, //GAMBAR 5
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
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
//p