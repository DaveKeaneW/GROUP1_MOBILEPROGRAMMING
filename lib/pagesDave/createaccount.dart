import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesgit/pagesDave/pagesdave.dart';
import 'package:tesgit/sharedDave/shared.dart';

final double defaultMargin = 24;

class RegisterPage extends StatelessWidget {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _usernameTextController =
      TextEditingController(); //Kode yang Anda tunjukkan adalah deklarasi dan inisialisasi tiga buah variabel _emailTextController, _passwordTextController, dan _usernameTextController yang semuanya bertipe TextEditingController. Ini adalah contoh penggunaan TextEditingController dalam Flutter untuk mengontrol teks input dalam aplikasi Anda
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            SizedBox(height: 20), // Adjusted height
            FractionalTranslation(
              translation:
                  Offset(0, -0), // Adjust the offset to move the image up
              child: Image.asset(
                'images/loginpage.png',
                height: 270,
                width: 233,
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.topCenter,
              child: FractionalTranslation(
                translation: Offset(0, -0.1),
                child: Text(
                  'Create Your Account', //text create acc
                  style: GoogleFonts.inriaSerif(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              controller: _emailTextController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Email', //email
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _usernameTextController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Username', //username
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordTextController,
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Password', //paswword
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    //saat tekan create account createuseremail,pass msk firebase
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text,
                      );
                      print("Created New Account");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WellcomePage()));
                    } catch (error) {
                      print("Error $error");
                    }
                  },
                  child: Text(
                    //sign up
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: ssecondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: Size(130, 40),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
