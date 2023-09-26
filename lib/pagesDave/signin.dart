import 'package:flutter/material.dart';
import 'package:tesgit/sharedDave/shared.dart';
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  final double defaultMargin = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor, // Gantilah dengan warna latar belakang yang sesuai
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            SizedBox(height: 100),
            // Tambahkan elemen-elemen yang diperlukan untuk halaman Sign In di sini
            // Contoh: TextFields untuk email dan password, tombol Sign In, dll.
          ],
        ),
      ),
    );
  }
}
