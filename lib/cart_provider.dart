<<<<<<< HEAD
import 'package:flutter/foundation.dart';

// Kelas ini akan digunakan untuk mewakili item di keranjang belanja
class CartItem {
  final String pizzaName;
  final double price;

  CartItem({required this.pizzaName, required this.price});
}

// Kelas ini adalah penyedia data keranjang belanja
class CartProvider with ChangeNotifier {
  // Daftar item yang ada di keranjang
  List<CartItem> _cartItems = [];

  // Mendapatkan daftar item di keranjang
  List<CartItem> get cartItems => _cartItems;

  // Menambahkan item ke keranjang
  void addToCart(CartItem item) {
    _cartItems.add(item);
    notifyListeners(); // memberi tahu semua yang mendengarkan bahwa data telah berubah
  }

  // Menghapus item dari keranjang
  void removeFromCart(CartItem item) {
    _cartItems.remove(item);
    notifyListeners(); // memberi tahu semua yang mendengarkan bahwa data telah berubah
  }

  // Menghitung total harga di keranjang
  double get totalPrice {
    double total = 0;
    for (var item in _cartItems) {
      total += item.price;
    }
    return total;
  }
}
=======
import '/cartmodel.dart';
import 'db_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartProvider with ChangeNotifier{

  DBHelper db = DBHelper() ;
  int _counter = 0 ;
  int get counter => _counter;

  double _totalPrice = 0.0 ;
  double get totalPrice => _totalPrice;

  late Future<List<Cart>> _cart ;
  Future<List<Cart>> get cart => _cart ;

  Future<List<Cart>> getData () async {
    _cart = db.getCartList();
    return _cart ;
  }


  void _setPrefItems()async{
    SharedPreferences prefs = await SharedPreferences.getInstance() ;
    prefs.setInt('cart_item', _counter);
    prefs.setDouble('total_price', _totalPrice);
    notifyListeners();
  }

  void _getPrefItems()async{
    SharedPreferences prefs = await SharedPreferences.getInstance() ;
    _counter = prefs.getInt('cart_item') ?? 0;
    _totalPrice = prefs.getDouble('total_price') ?? 0.0;
    notifyListeners();
  }


  void addTotalPrice (double productPrice){
    _totalPrice = _totalPrice +productPrice ;
    _setPrefItems();
    notifyListeners();
  }

  void removeTotalPrice (double productPrice){
    _totalPrice = _totalPrice  - productPrice ;
    _setPrefItems();
    notifyListeners();
  }

  double getTotalPrice (){
    _getPrefItems();
    return  _totalPrice ;
  }


  void addCounter (){
    _counter++;
    _setPrefItems();
    notifyListeners();
  }

  void removerCounter (){
    _counter--;
    _setPrefItems();
    notifyListeners();
  }

  int getCounter (){
    _getPrefItems();
    return  _counter ;

  }
}
>>>>>>> 5388674f9a65e4ef704368a88984081b07a02dde
