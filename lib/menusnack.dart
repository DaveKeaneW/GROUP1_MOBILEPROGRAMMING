import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MenuSnack extends StatelessWidget {
  const MenuSnack({super.key});

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
              'Snack',
              style: TextStyle(
                fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
                fontSize: 28,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
        ),
        body: ListView(children: [
          MenuSnackPage1(),
        ]),
      ),
    );
  }
}

class MenuSnackPage1 extends StatelessWidget {
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
                  'French Fries',
                  style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: Colors.white,
                    fontSize: 16,
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
          'Indulge in our delicious, crispy, golden FrenchFries, a classic french fries favorite thats perfect as a side or a filling snack.',
          style: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.w400,
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
                  'Cheesy French Fries',
                  style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: Colors.white,
                    fontSize: 16,
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
          'Elevate your french fries experience with our delicious Cheesy French Fries, a delicious blend of crunchy and creamy, melty cheese.',
          style: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Colors.white,
            fontSize: 11.5,
            fontWeight: FontWeight.w400,
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
        'Treat yourself to our deliciously crunchy \nand flavorful Onion Rings, a classic \nappetizer or side dish that offers the \nperfect balance.',
        style: TextStyle(
          fontFamily: GoogleFonts.inter().fontFamily,
          color: Colors.white,
          fontSize: 11,
          fontWeight: FontWeight.w400,
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
                  'Potato Wedges',
                  style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 448,
                child: Text(
                  'Onion Rings',
                  style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 170,
                top: 580,
                child: Text(
                  'Chicken Wings',
                  style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: Colors.white,
                    fontSize: 16,
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
          'Treat yourself to the rustic charm of our Potato Wedges, a delicious snack or side dish that highlights the natural goodness of potatoes with a touch of crunch.',
          style: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.w400,
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
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1,
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
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1,
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
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1,
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
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1,
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
                              fontFamily: GoogleFonts.inter().fontFamily,
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1,
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
          'A delicious blend of succulent chicken, aromatic garlic and savory Parmesan cheese that is sure to satisfy your taste buds.',
          style: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.w400,
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
                      image: AssetImage("images/prenprais.png"),
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
                      image: AssetImage("images/cheesefr.png"),
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
                      image: AssetImage("images/potatowed.png"),
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
                      image: AssetImage("images/onionring.png"),
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
        image: AssetImage("imges/garlicpar.png"),
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
