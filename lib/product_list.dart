import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'cartmodel.dart';
import 'cart_provider.dart';
import 'home.dart';
import 'db_helper.dart';
import 'package:provider/provider.dart';


class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<String> productName = [
    'Spaghetti Bolognese',
    'Spaghetti Aglio Olio',
    'Spaghetti Tomato Sauce',
    'Spaghetti Alle Vongole',
    'Spaghetti Creamy Mushroom',
  ];
  List<String> description = [
    'Delicious spaghetti with Bolognese sauce.',
    'Classic spaghetti with garlic and olive oil.',
    'Delicious spaghetti with rich and fresh tomato sauce.',
    'Classic spaghetti with fresh clams, garlic, and olive oil.',
    'Creamy mushroom spaghetti for a flavorful delight.',
  ];

  List<double> productPrice = [50.000, 45.000, 47.000, 68.000, 57.000];
  List<String> productImage = [
    'img/spagg_bolo.png',
    'img/spagg_alio.png',
    'img/spagg_toma.png',
    'img/spagg_alle.png',
    'img/spagg_cream.png',
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
            'Spaghetti',
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
              },
              child: Center(
                child: badges.Badge(
                  showBadge: true,
                  badgeContent: Consumer<CartProvider>(
                    builder: (context, value, child) {
                      return Text(value.getCounter().toString(), style: TextStyle(color: Colors.white));
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
    itemCount: productName.length,
    itemBuilder: (context, index) {
      return Card(
        color: Color(0xFF201520), // Tambahkan properti color di sini
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                          Row(
                            children: [
                              Image.asset(
                                productImage[index],
                                height: 120.0,
                                width: 120.0,
                              ),
                              SizedBox(width: 16.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productName[index],
                                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      description[index], // Gunakan deskripsi dari daftar produk
                                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      'Rp.${productPrice[index].toStringAsFixed(3)}',
                                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 16.0),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: InkWell(
                                        onTap: () {
                                          dbHelper!.insert(
                                            Cart(
                                              id: index,
                                              productId: index.toString(),
                                              productName: productName[index],
                                              initialPrice: productPrice[index].toInt(),
                                              productPrice: productPrice[index].toInt(),
                                              quantity: 1,
                                              image: productImage[index],
                                              description: description[index], // Tambahkan deskripsi produk
                                            ),
                                          ).then((value) {
                                            cart.addTotalPrice(productPrice[index]);
                                            cart.addCounter();

                                            final snackBar = SnackBar(
                                              backgroundColor: Colors.green,
                                              content: Text('Product is added to cart'),
                                              duration: Duration(seconds: 1),
                                            );

                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                          }).onError((error, stackTrace) {
                                            final snackBar = SnackBar(
                                              backgroundColor: Colors.red,
                                              content: Text('Product is already added in cart'),
                                              duration: Duration(seconds: 1),
                                            );

                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                          });
                                        },
                                        child: Container(
                                          height: 40.0,
                                          width: 120.0,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 255, 255, 255),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Add to cart',
                                              style: TextStyle(color: Colors.black),
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
