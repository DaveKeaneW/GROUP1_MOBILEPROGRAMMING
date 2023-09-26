import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          BurgerMenu1(),
        ]),
      ),
    );
  }
}

class BurgerMenu1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 975,
          height: 912,
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
                left: 139,
                top: 156,
                child: Text(
                  'SouthWest Chicken Burger',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 175,
                child: SizedBox(
                  width: 218,
                  height: 47,
                  child: Text(
                    'These southwest chicken burgers are made with diced red bell pepper, shallots, and southwest spices, and pack a ton of flavor. Assembled and cooked in under 20 minutes.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 280,
                child: Text(
                  'Bacon Swiss Burger',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 301,
                child: SizedBox(
                  width: 218,
                  child: Text(
                    'Step up your burger game with some extra toppings: sautéed mushrooms and onions, crispy bacon, Swiss cheese, and barbeque sauce.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 557,
                child: SizedBox(
                  width: 210,
                  child: Text(
                    'A Double Cheeseburger consists of two 1.6 oz. beef patties, two slices of American cheese, a sesame seed bun, ketchup, pickle slices, onions, and mustard.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 411,
                child: Text(
                  'Pulled Pork Burger',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 538,
                child: Text(
                  'Double Cheese Burger',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 430,
                child: SizedBox(
                  width: 218,
                  child: Text(
                    'The Pulled Pork Burger is a smoky, sweet and spicy burger that is sure to be a hit at your next cookout! This burger is packed with flavor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),

              //SOUTHWEST BURGER PNG
              Image.asset(
                "images/Spaghetti Bologneses 1.png",
                width: 140,
                height: 420,
              ),
              //WHITE RECTANGLE
              Image.asset(
                "images/Rectangle 1.png",
                width: 899,
                height: 123,
              ),
              //TULISAN BURGER
              Image.asset(
                "images/Burger.png",
                width: 450,
                height: 135,
              ),
              //BACON SWISS BURGER
              Image.asset(
                "images/Our Favorite Recipes from an Entire Year of Cooking 1.png",
                width: 140,
                height: 660,
              ),
              //PULLED PORK BURGER
              Image.asset(
                "images/Tomato Confit Spaghetti - The Original Dish 1.png",
                width: 140,
                height: 950,
              ),
              //ELLIPSE PNG
              Image.asset(
                "images/Ellipse 2.png",
                width: 90,
                height: 135,
              ),
              //ARROW PNG
              Image.asset(
                "images/Arrow_Back.png",
                width: 90,
                height: 135,
              ),
              // DOUBLE CHEESE BURGER
              Image.asset(
                "images/Spaghetti alle vongole e pomodorini (o bianchi)_ Ricetta originale e Segreti! 1.png",
                width: 140,
                height: 1,
              ),
              // BEEF BURGER

              Positioned(
                left: 291,
                top: 235,
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
                      Positioned(
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 291,
                top: 360,
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
                      Positioned(
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                              Positioned(
                                left: 0,
                                top: 0,
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
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(15),
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 291,
                top: 488,
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
                      Positioned(
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                              Positioned(
                                left: 0,
                                top: 0,
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
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(15),
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 289,
                top: 617,
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
                      Positioned(
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                              Positioned(
                                left: 0,
                                top: 0,
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
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(15),
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 235,
                child: Text(
                  'Rp.50.000',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 488,
                child: Text(
                  'Rp.67.000',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 361,
                child: Text(
                  'Rp.55.000',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 617,
                child: Text(
                  'Rp.43.000',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 685,
                child: SizedBox(
                  width: 210,
                  child: Text(
                    'A beef burger consists of two beef patties, two slices of American cheese, a sesame seed bun, ketchup, pickle slices, onions, and mustard.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 666,
                child: Text(
                  'Beef Burger',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 288,
                top: 744,
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
                      Positioned(
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                              Positioned(
                                left: 0,
                                top: 0,
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
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(15),
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 745,
                child: Text(
                  'Rp.45.000',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 685,
                child: SizedBox(
                  width: 210,
                  child: Text(
                    'A beef burger consists of two beef patties, two slices of American cheese, a sesame seed bun, ketchup, pickle slices, onions, and mustard.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 288,
                top: 744,
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
                      Positioned(
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                        left: 0,
                        top: 0,
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
                                      side: BorderSide(
                                          width: 1, color: Colors.white),
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
                              Positioned(
                                left: 0,
                                top: 0,
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
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(15),
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
                            ],
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
      ],
    );
  }
}
