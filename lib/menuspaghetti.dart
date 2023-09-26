import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MenuSpaghetti extends StatelessWidget {
  const MenuSpaghetti({super.key});

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
            onPressed: (){
              Navigator.pop(context);
            },
            ),
            title: Text(
              'Spaghetti',
              style: TextStyle(
                fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
                fontSize: 28,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
        ),
        body: ListView(children: [
          MenuSpaghettiPage1(),
        ]),
      ),
    );
  }
}

class MenuSpaghettiPage1 extends StatelessWidget {
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
                top: 35,
                child: Text(
                  'Spaghetti Bolognese',
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
  top: 55,
  child: SizedBox(
    width: 209,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our best ever spaghetti bolognese is very\ndelicious and a true Italian classic with\na meaty, chilli sauce. This pasta bolognese \nrecipe is sure to become a family favorite.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        Text(
          '\nRp.50.000',
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
                left: 170,
                top: 170,
                child: Text(
                  'Spaghetti Aglio Olio',
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
  top: 190,
  child: SizedBox(
    width: 216,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Spaghetti aglio e olio is a classic pasta dish from Italy where the spaghetti is tossed in a simple and tasty garlic, chili, parsley, and olive oil sauce.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 11.5,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        Text(
          '\nRp.45.000',
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
  left: 170,
  top: 472,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Experience the timeless classic of Italian \ncuisine with our Spaghetti Tomato Sauce, \na comforting and flavorful dish that captures \nthe essence of Italy.',
        style: TextStyle(
          color: Colors.white,
          fontSize: 11,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
      Text(
        '\nRp.47.000',
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
              Positioned(
                left: 170,
                top: 305,
                child: Text(
                  'Spaghetti Tomato Sauce',
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
                  'Spaghetti Alle Vongole',
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
                  'Spaghetti Creamy Mushroom',
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
  top: 330,
  child: SizedBox(
    width: 225,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our classic spaghetti alle vongole is the \nperfect menu dinner for a warm summer \nevening. This simple dish of spaghetti and \nclams is flavored with garlic, chili, white wine \nand parsley.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        Text(
          '\nRp.68.000',
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
              Positioned(
                left: 310,
                top: 130,
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
              Positioned(
                left: 310,
                top: 395,
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
              Positioned(
                left: 310,
                top: 663,
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
              Positioned(
                left: 310,
                top: 540,
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
              Positioned(
  left: 170,
  top: 600,
  child: SizedBox(
    width: 225,
    height: 90,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Indulge in the rich and savory flavors of our Creamy Mushroom Spaghetti. Made with the finest ingredients  and a touch of culinary expertise.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        Text(
          '\nRp.57.000',
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
                left: 32,
                top: 40,
                child: Container(
                  width: 115,
                  height: 106,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/spagg_bolo.png"),
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
                      image: AssetImage("img/spagg_alio.png"),
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
                      image: AssetImage("img/spagg_toma.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
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
                      image: AssetImage("img/spagg_alle.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
  left: 32,
  top: 580,
  child: Container(
    width: 115,
    height: 106,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("img/spagg_cream.png"),
        fit: BoxFit.fill,
      ),
      borderRadius: BorderRadius.all(Radius.circular(15.0)), // Tambahkan border radius di sini
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