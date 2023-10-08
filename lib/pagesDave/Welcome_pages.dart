part of 'pagesdave.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({Key? key}) : super(key: key);

  final double defaultMargin = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            SizedBox(height: 130),
            Image.asset('images/loginpage.png',
                height: 270,width: 233, alignment: Alignment.center, fit: BoxFit.cover),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome",
              style: welcomeTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text("Before enjoying Foodmedia services \nPlease register first",
                style: biasaTextStyle.copyWith(fontSize: 13),
                textAlign: TextAlign.center),
            SizedBox(
              height: 101,
            ),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => RegisterPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(position: offsetAnimation, child: child);
    },
  ),
);
                    },
                    child: Text('Create Account', style: biasaTextStyle),
                    style: ElevatedButton.styleFrom(
                        primary: ssecondaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))))),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
  context,
  PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SignInPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(position: offsetAnimation, child: child);
    },
  ),
);
                    },
                    child: Text('Sign In', style: biasaTextStyle),
                    style: ElevatedButton.styleFrom(
                        primary: buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))))),
            SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By logging in or registering, you have agreed to ',
                    style: biasaTextStyle.copyWith(fontSize: 10),

                  ),
                  TextSpan(
                    text: 'the Terms and Conditions and Privacy Policy.',
                    style: termsTextStyle.copyWith(fontSize: 10),
                  ),

                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
