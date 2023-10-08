import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'cartmodel.dart';
import 'cart_provider.dart';
import 'cart.dart';
import 'db_helper.dart';
import 'package:provider/provider.dart';

class ProductListScreenDrinks extends StatefulWidget {
  const ProductListScreenDrinks({Key? key}) : super(key: key);

  @override
  _ProductListScreenStateDrinks createState() =>
      _ProductListScreenStateDrinks();
}

class _ProductListScreenStateDrinks extends State<ProductListScreenDrinks> {
  List<Cart> products = [
    Cart(
      id: null,
      productId: '21',
      productName: 'StrawBerry Milkshake',
      initialPrice: 45,
      productPrice: 45,
      quantity: 1,
      image: 'images/stroberimilk.png',
      description:
          'sweet beverage made by blending milk, ice cream, and flavorings or sweeteners such as butterscotch, caramel sauce, Strawberry.',
    ),
    Cart(
      id: null,
      productId: '22',
      productName: 'Lychee Ice Tea',
      initialPrice: 30,
      productPrice: 30,
      quantity: 1,
      image: 'images/leciicetea.png',
      description:
          'This lychee-infused iced green tea is a sweet and fruity drink inspired by the ancient Chinese lychee tea. Refreshing and energising.',
    ),
    Cart(
      id: null,
      productId: '23',
      productName: 'Lemon Ice Tea',
      initialPrice: 35,
      productPrice: 35,
      quantity: 1,
      image: 'images/lemonicetea.png',
      description:
          'Lemon iced tea combines black tea, fresh lemon juice, and sugar to make a bold and refreshing drink.',
    ),
    Cart(
      id: null,
      productId: '24',
      productName: 'Orange Blush',
      initialPrice: 65,
      productPrice: 65,
      quantity: 1,
      image: 'images/orangebush.png',
      description:
          'navel, cara cara, or blood oranges—whichever you prefer—just note that the color of your cocktails will vary depending on the citrus you use.',
    ),
    Cart(
      id: null,
      productId: '25',
      productName: 'Thai Ice Tea',
      initialPrice: 37,
      productPrice: 37,
      quantity: 1,
      image: 'images/thaiicetea.png',
      description:
          'Thai Iced Tea is a refreshing drink that is served over ice and made with brewed black tea and spices like vanilla, cinnamon, cardamom.',
    ),
    // Tambahkan produk lainnya ke dalam daftar ini
  ];

  DBHelper? dbHelper = DBHelper();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF201520),
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
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Drinks',
            style: TextStyle(
              fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
              fontSize: 28,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        CartScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      const curve = Curves.easeInOut;
                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);
                      return SlideTransition(
                          position: offsetAnimation, child: child);
                    },
                  ),
                );
              },
              child: Center(
                child: badges.Badge(
                  showBadge: true,
                  badgeContent: Consumer<CartProvider>(
                    builder: (context, value, child) {
                      return Text(value.getCounter().toString(),
                          style: TextStyle(color: Colors.white));
                    },
                  ),
                  badgeAnimation: badges.BadgeAnimation.rotation(
                    animationDuration: Duration(milliseconds: 300),
                    colorChangeAnimationDuration: Duration(seconds: 1),
                    loopAnimation: false,
                    curve: Curves.fastOutSlowIn,
                    colorChangeAnimationCurve: Curves.easeInCubic,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20.0)
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    color: Color(0xFF201520),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                product.image!,
                                height: 120.0,
                                width: 120.0,
                              ),
                              SizedBox(width: 16.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.productName!,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      product.description!,
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Rp.${product.productPrice?.toStringAsFixed(3) ?? "0.000"}',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 16.0),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: InkWell(
                                        onTap: () {
                                          dbHelper!
                                              .insert(
                                            product,
                                          )
                                              .then((value) {
                                            cart.addTotalPrice(product
                                                .productPrice!
                                                .toDouble());
                                            cart.addCounter();

                                            final snackBar = SnackBar(
                                              backgroundColor: Colors.green,
                                              content: Text(
                                                  'Product is added to cart'),
                                              duration: Duration(seconds: 1),
                                            );

                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackBar);
                                          }).onError((error, stackTrace) {
                                            final snackBar = SnackBar(
                                              backgroundColor: Colors.red,
                                              content: Text(
                                                  'Product is already added in cart'),
                                              duration: Duration(seconds: 1),
                                            );

                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackBar);
                                          });
                                        },
                                        child: Container(
                                          height: 40.0,
                                          width: 120.0,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  color: Colors.black),
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
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//p