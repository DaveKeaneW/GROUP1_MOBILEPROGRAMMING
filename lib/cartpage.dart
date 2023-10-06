import 'package:badges/badges.dart' as badges;
import 'cartmodel.dart';
import 'db_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

  TextEditingController _addressController = TextEditingController(); // Tambahkan controller

class _CartScreenState extends State<CartScreen> {
  DBHelper? dbHelper = DBHelper();

  double calculateTotalPrice(List<Cart> cartItems) {
    double totalPrice = 0;
    for (var item in cartItems) {
      totalPrice += item.productPrice! * item.quantity!;
    }
    return totalPrice;
  }


  void showCheckoutDialog(BuildContext context, String shippingAddress) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.NO_HEADER,
    animType: AnimType.BOTTOMSLIDE,
    showCloseIcon: true,
    body: Column(
      children: [
        Text(
          "Choose Payment Method:",
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Tindakan saat tombol "Cash" ditekan
            // Misalnya, navigasi ke layar pembayaran dengan uang tunai
            Navigator.of(context).pop(); // Tutup dialog pertama
            showPaymentConfirmationDialog(context);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
          child: Text(
            'Cash',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Tindakan saat tombol "E-pay" ditekan
            // Misalnya, navigasi ke layar pembayaran elektronik
            Navigator.of(context).pop(); // Tutup dialog pertama
            showPaymentConfirmationDialog(context);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
          child: Text(
            'E-pay',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  )..show();
}

void showPaymentConfirmationDialog(BuildContext context) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.SUCCES, // Atau sesuaikan dengan tipe dialog yang Anda inginkan
    animType: AnimType.BOTTOMSLIDE,
    showCloseIcon: true,
    title: "Success",
    desc: "Payment has been confirmed. Your order has been received. Please wait a while...",
    btnOkText: "OK",
    btnOkOnPress: () {
      Navigator.of(context).pop(); // Tutup dialog konfirmasi
    },
  )..show();
}

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    Future<List<Cart>> cartItemsFuture = cart.getData(); // Mengambil daftar produk dalam keranjang dari _cart
    double tax = 0.15 * cart.getTotalPrice(); // 15% tax rate
    double deliveryCharges = 15.0; // Biaya pengiriman Rp. 15.000 // Total harga termasuk tax dan biaya pengiriman
    double totalPrice = cart.getTotalPrice() + tax + deliveryCharges; // Total harga termasuk tax dan biaya pengiriman

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Warna latar belakang AppBar
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
          'Shopping Cart', // Judul AppBar
          style: TextStyle(
            fontFamily: GoogleFonts.jacquesFrancois().fontFamily,
            fontSize: 28,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Center(
            child: badges.Badge(
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
          SizedBox(width: 20.0)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            FutureBuilder(
                future: cartItemsFuture,
                builder: (context, AsyncSnapshot<List<Cart>> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('img/empty_cart.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Your cart is empty 😌',
                                style: Theme.of(context).textTheme.headline5),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                                'Explore products and shop your\nfavourite items',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.subtitle2)
                          ],
                        ),
                      );
                    } else {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image(
                                          height: 100,
                                          width: 100,
                                          image: NetworkImage(snapshot
                                              .data![index].image
                                              .toString()),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    snapshot.data![index]
                                                        .productName
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        dbHelper!.delete(
                                                            snapshot
                                                                .data![index]
                                                                .id!);
                                                        cart.removerCounter();
                                                        cart.removeTotalPrice(
                                                            double.parse(snapshot
                                                                .data![index]
                                                                .productPrice
                                                                .toString()));
                                                      },
                                                      child: Icon(Icons.delete))
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Rp. ${snapshot.data![index].productPrice?.toStringAsFixed(3) ?? "0.000"}',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    height: 35,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          InkWell(
                                                              onTap: () {
                                                                int quantity =
                                                                    snapshot
                                                                        .data![
                                                                            index]
                                                                        .quantity!;
                                                                int price = snapshot
                                                                    .data![
                                                                        index]
                                                                    .initialPrice!;
                                                                quantity--;
                                                                int? newPrice =
                                                                    price *
                                                                        quantity;

                                                                if (quantity >
                                                                    0) {
                                                                  dbHelper!
                                                                      .updateQuantity(
                                                                          Cart(
                                                                    id: snapshot
                                                                        .data![
                                                                            index]
                                                                        .id!,
                                                                    productId: snapshot
                                                                        .data![
                                                                            index]
                                                                        .id!
                                                                        .toString(),
                                                                    productName: snapshot
                                                                        .data![
                                                                            index]
                                                                        .productName!,
                                                                    initialPrice: snapshot
                                                                        .data![
                                                                            index]
                                                                        .initialPrice!,
                                                                    productPrice:
                                                                        newPrice,
                                                                    quantity:
                                                                        quantity,
                                                                    image: snapshot
                                                                        .data![
                                                                            index]
                                                                        .image
                                                                        .toString(),
                                                                    description: snapshot
                                                                        .data![
                                                                            index]
                                                                        .description,
                                                                  ))
                                                                      .then(
                                                                          (value) {
                                                                    newPrice =
                                                                        0;
                                                                    quantity =
                                                                        0;
                                                                    cart.removeTotalPrice(double.parse(snapshot
                                                                        .data![
                                                                            index]
                                                                        .initialPrice!
                                                                        .toString()));
                                                                  }).onError((error,
                                                                          stackTrace) {
                                                                    print(error
                                                                        .toString());
                                                                  });
                                                                }
                                                              },
                                                              child: Icon(
                                                                Icons.remove,
                                                                color: Colors
                                                                    .white,
                                                              )),
                                                          Text(
                                                              snapshot
                                                                  .data![index]
                                                                  .quantity
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white)),
                                                          InkWell(
                                                              onTap: () {
                                                                int quantity =
                                                                    snapshot
                                                                        .data![
                                                                            index]
                                                                        .quantity!;
                                                                int price = snapshot
                                                                    .data![
                                                                        index]
                                                                    .initialPrice!;
                                                                quantity++;
                                                                int? newPrice =
                                                                    price *
                                                                        quantity;

                                                                dbHelper!
                                                                    .updateQuantity(
                                                                        Cart(
                                                                  id: snapshot
                                                                      .data![
                                                                          index]
                                                                      .id!,
                                                                  productId: snapshot
                                                                      .data![
                                                                          index]
                                                                      .id!
                                                                      .toString(),
                                                                  productName: snapshot
                                                                      .data![
                                                                          index]
                                                                      .productName!,
                                                                  initialPrice: snapshot
                                                                      .data![
                                                                          index]
                                                                      .initialPrice!,
                                                                  productPrice:
                                                                      newPrice,
                                                                  quantity:
                                                                      quantity,
                                                                  image: snapshot
                                                                      .data![
                                                                          index]
                                                                      .image
                                                                      .toString(),
                                                                  description: snapshot
                                                                      .data![
                                                                          index]
                                                                      .description,
                                                                ))
                                                                    .then(
                                                                        (value) {
                                                                  newPrice = 0;
                                                                  quantity = 0;
                                                                  cart.addTotalPrice(double.parse(snapshot
                                                                      .data![
                                                                          index]
                                                                      .initialPrice!
                                                                      .toString()));
                                                                }).onError((error,
                                                                        stackTrace) {
                                                                  print(error
                                                                      .toString());
                                                                });
                                                              },
                                                              child: Icon(
                                                                Icons.add,
                                                                color: Colors
                                                                    .white,
                                                              )
                                                              ),
                                                        ],
                                                      ),
                                                      
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }
                  }
                  return Text('');
                }
                ),
                Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        controller: _addressController,
        decoration: InputDecoration(
          labelText: 'Shipping Address', // Label kotak teks
          border: OutlineInputBorder(),
        ),
      ),
    ),
            Consumer<CartProvider>(builder: (context, value, child) {
              return Visibility(
                visible: totalPrice.toStringAsFixed(3) == "0.000" ? false : true,
                child: Column(
                  children: [
                    ReusableWidget(
                      title: 'Sub Total',
                      value: 'Rp. ' + cart.getTotalPrice().toStringAsFixed(3),
                      titleFontSize: 18.0,
                      valueFontSize: 18.0,
                      ),
                    ReusableWidget(
                      title: 'Tax (15%)',
                      value: 'Rp.' + tax.toStringAsFixed(3),
                      titleFontSize: 18.0,
                      valueFontSize: 18.0,
                    ),
                    ReusableWidget(
                      title: 'Delivery Charges',
                      value: 'Rp.' + deliveryCharges.toStringAsFixed(3),
                      titleFontSize: 18.0,
                      valueFontSize: 18.0,
                    ),
                    ReusableWidget(
                      title: 'Total',
                      value: 'Rp.' + totalPrice.toStringAsFixed(3),
                      titleFontSize: 18.0,
                      valueFontSize: 18.0,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
              onPressed: () {
                String shippingAddress = _addressController.text;
                showCheckoutDialog(context, shippingAddress);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              child: Text(
                'Payment',
                style: TextStyle(
                  color: Colors.black,
    ),
  ),
)
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  final String title;
  final String value;
  final double titleFontSize; // Ukuran font untuk judul
  final double valueFontSize; // Ukuran font untuk nilai

  const ReusableWidget({
    required this.title,
    required this.value,
    this.titleFontSize = 16.0, // Ukuran font default untuk judul
    this.valueFontSize = 16.0, // Ukuran font default untuk nilai
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value.toString(),
            style: TextStyle(
              fontSize: valueFontSize,
            ),
          )
        ],
      ),
    );
  }
}
