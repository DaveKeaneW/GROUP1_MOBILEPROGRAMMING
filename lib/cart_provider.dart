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
