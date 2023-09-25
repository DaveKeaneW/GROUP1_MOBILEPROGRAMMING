import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120, 
        leading: Container(
          margin: EdgeInsets.only(left: 10), 
          width: 40, 
          height: 40, 
          decoration: BoxDecoration(
            color: Colors.black, 
            shape: BoxShape.circle, 
          ),
          child: IconButton(
            iconSize: 24, 
            icon: Icon(Icons.arrow_back, color: Colors.white), 
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Color(0xffffffff),
        title: Text(
          'Pizza',
          style: TextStyle(
            fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000),
          ),
        ),
        centerTitle: true, // Membuat teks 'Pizza' menjadi ditengah AppBar
      ),
      body: Container(
        color: Color(0xff201520),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(12, 28, 10, 39),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 16, 14),
                  width: double.infinity,
                  height: 111,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                        width: 114,
                        height: 111,
                        child: Image.asset('images/margarita.png', fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 4, 0, 10),
                        width: 210,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                              child: Text(
                                'Margarita Pizza',
                                style: TextStyle(
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 78,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                        width: 210,
                                        height: 61,
                                        child: Text(
                                          'Our Margerita Pizza is best seller of pizza in\nour Deja Brew\'s Store. This pizza usually\ntopped with a variety of things, such as\ntomatoes, cheese, olives, anchovies, and garlic.',
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.inter().fontFamily,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 156,
                                    top: 60,
                                    child: Container(
                                      width: 37,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xffffffff)),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Center(
                                        child: Text(
                                          'ADD',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.inter().fontFamily,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125,
                                            color: Color(0xffffffff),
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
                          ),
                        ],
                      ),
                    ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
              width: double.infinity,
              height: 250,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0,0, 3, 0),
                    width: 124,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Align(
                            child: SizedBox(
                              width: 124,
                              height: 118,
                              child: Image.asset('images/tomat.png', fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 114,
                          child: Align(
                            child: SizedBox(
                              width: 125,
                              height: 136,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset('images/meat.png', fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 7, 0, 13),
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 89, 6),
                          child: Text(
                            'Cherry Tomatoes Pizza',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 1.2125,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 5),
                          constraints: BoxConstraints(
                            maxWidth: 216,
                          ),
                          child: Text(
                            'Homemade pizza dough topped with roasted\ncaramelized onions, burst summer tomatoes, \nsweet melted gouda cheese, herbs, creamy\nburrata, and topped with fresh basil.',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 1.2125,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(123, 0, 0, 30),
                          width: 37,
                          height: 18,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffffffff)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'ADD',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0,0, 131,4),
                            child: Text(
                              'Pepperoni Pizza',
                              style: TextStyle(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                height: 1.2125,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                          constraints: BoxConstraints(
                            maxWidth: 226,
                          ),
                          child: Text(
                            'Pepperoni made from beef and cured pork\nmixed together and then seasoned with a blend\n that usually includes paprika, garlic, black\npepper, crushed red pepper, cayenne pepper\n, mustard seed, and fennel seed.',
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 1.2125,
                              color: Color(0xffffffff),
                            ),
                          ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(123, 0, 0, 0),
                            width: 37,
                            height: 18,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffffffff)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  'ADD',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(margin: EdgeInsets.fromLTRB(9, 0, 0, 22),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        width: 106,
                        height: 110,
                        child: Image.asset('images/cheese.png', fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 109, 6),
                            child: Text(
                              'Garlic Cheese Pizza',
                              style: TextStyle(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                height: 1.2125,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                            constraints: BoxConstraints(
                              maxWidth: 226,
                            ),
                            child: Text(
                              'The pizza generally consists of pizza dough,\nolive oil, garlic, cheese, salt and sometimes\ntoppings including vegetables such as spinach,\ntomato, and herbs.',
                              style: TextStyle(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                height: 1.2125,
                                color: Color(0xfffffffff),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(123, 0, 0, 0),
                            width: 37,
                            height: 18,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffffffff)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Center(
                                child:Text(
                                  'ADD',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125,
                                    color: Color(0xffffffff),
                                  ),
                                ), 
                                ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(9, 0, 29, 0),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 17, 0),
                          width: 106,
                          height: 107,
                          child: Image.asset('images/mushroom.png', fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 43, 13),
                                child: Text(
                                  'Mushroom Chicken Pizza',
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
                                constraints: BoxConstraints(
                                  maxWidth: 192,
                                ),
                                child: Text(
                                  'This pizza made from chicken breast,\nmushroom, cherry tomatoes and melted\ncheese mozarella.',
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2125,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                width: 37,
                                height: 18,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffffffff)),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      'ADD',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.inter().fontFamily,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ], ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
              ],
          ),
      ),
        ),
      ),
        );
  }
}
