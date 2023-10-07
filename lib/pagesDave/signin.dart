import 'package:flutter/material.dart';
import 'package:tesgit/pagesDave/pagesdave.dart';
import 'package:tesgit/sharedDave/shared.dart';
import 'package:tesgit/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignInPage extends StatelessWidget {
  
  const SignInPage({Key? key}) : super(key: key);

  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true, // Memperpanjang konten di bawah AppBar
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Atur latar belakang AppBar menjadi transparan
          elevation: 0, // Hilangkan bayangan AppBar
          // Tambahkan tombol kembali di sini
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
          title: Text('Sign In'),
        ),
        body: SingleChildScrollView( // Wrap with SingleChildScrollView
          child: SignIn(),
        ),
      ),
    );
  }
}


class SignIn extends StatelessWidget {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 867,
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
          ),
          child: Stack(
            children: [
              Positioned(
                left: -151,
                top: 425,
                child: Container(
                  width: 500,
                  height: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/chefcowok.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 180,
                child: SizedBox(
                  width: 348,
                  height: 35,
                  child: Text(
                    'Sign In To Your Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'Inria Serif',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -51,
                top: -30,
                child: Container(
                  width: 550,
                  height: 129,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/loginpage.png"),
                      fit: BoxFit.cover,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 276,
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0x00D9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: TextField(
                    controller: _emailTextController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 347,
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0x00D9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                      
                    ),
                  ),
                  child: TextField(
                    controller: _passwordTextController,
                    style: TextStyle(color: Colors.white),
                    obscureText: true, // Password field should obscure text
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 245,
                top: 430, // Sesuaikan posisi 
                child: 
                ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, 
                    password: _passwordTextController.text).then((value){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomeScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()})");
                    });
     
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF543656), // Warna latar belakang tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                      minimumSize: Size(130, 40), // Atur tinggi dan lebar tombol 
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
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
