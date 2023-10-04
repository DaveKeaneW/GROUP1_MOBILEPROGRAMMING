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
                  'StrawBerry MilkShake', //JUDUL 1
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
                        'sweet beverage made by blending milk, ice cream, and flavorings or sweeteners such as butterscotch, caramel sauce, Strawberry.', //DESC 1
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\nRp.45.000', //HARGA 1
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
                  'Lychee Ice Tea', //JUDUL 2
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
                        'This lychee-infused iced green tea is a sweet and fruity drink inspired by the ancient Chinese lychee tea. Refreshing and energising.', //DESC 2
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.5,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\nRp.30.000', //HARGA 2
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
                      'navel, cara cara, or blood oranges—whichever\nyou prefer—just note that the color of your\ncocktails will vary depending on the citrus\nyou use.', // DESC 4
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Text(
                      '\nRp.67.000', //HARGA 4
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
                  'Lemon Ice Tea', //JUDUL 3
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
                  'Orange Blush', //JUDUL 4
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
                  'Thai Ice Tea', // JUDUL 5
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
                        'Lemon iced tea combines black tea, fresh lemon juice, and sugar to make a bold and refreshing drink.', //DESC 3
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\nRp.35.000', // HARGA 3
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
                top: 257, // ADD BUTTON 2
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
                top: 120,
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
                        'Thai Iced Tea is a refreshing drink that is served over ice and made with brewed black tea and spices like vanilla, cinnamon, cardamom.', //DESC 5
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        '\nRp.37.000', //HARGA 5
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
                      image: AssetImage("images/stroberimilk.png"), //GAMBAR 1
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
                      image: AssetImage("images/leciicetea.png"), // GAMBAR 2
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
                      image: AssetImage("images/lemonicetea.png"), //GAMBAR 3
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
                      image: AssetImage("images/orangebush.png"),
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
                      image: AssetImage("images/thaiicetea.png"),
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
//PD