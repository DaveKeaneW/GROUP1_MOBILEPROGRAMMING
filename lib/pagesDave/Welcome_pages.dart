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
<<<<<<< HEAD
                height: 270,width: 233, alignment: Alignment.center, fit: BoxFit.cover),
                SizedBox(height:30,),
                  Text("Welcome", style :welcomeTextStyle,textAlign: TextAlign.center,
=======
                height: 270,
                width: 233,
                alignment: Alignment.center,
                fit: BoxFit.cover),
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
                        MaterialPageRoute(builder: (context) => RegisterPage()),
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
                        MaterialPageRoute(
                            builder: (context) =>
                                SignInPage()), // Navigate to SignInPage
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
>>>>>>> 94a1f71a32c96716f204a9fd3992eff86f7073b4
                  ),
                  TextSpan(
                    text: 'the Terms and Conditions and Privacy Policy.',
                    style: termsTextStyle.copyWith(fontSize: 10),
                  ),
<<<<<<< HEAD
                  SizedBox(height:101,
                  ),
                  Container(
                    height: 60,
                    width:MediaQuery.of(context).size.width -2 * defaultMargin,
                    child: ElevatedButton(onPressed:(){
                        Navigator.push( context,  MaterialPageRoute(builder: (context) => RegisterPage()),
                         );
                    }, child: Text('Create Account',style:biasaTextStyle
                    ),
                     style: ElevatedButton.styleFrom(primary: ssecondaryColor,shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)) )
                    )
                  ),
                  SizedBox(height:20,
                  ),
                  Container(
                    height: 60,
                    width:double.infinity,
                    child: ElevatedButton(onPressed:(){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()), // Navigate to SignInPage
                      );
                    }, child: Text('Sign In',style:biasaTextStyle
                    ),
                     style: ElevatedButton.styleFrom(primary: buttonColor,shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)) )
                    )
                  ),
                  SizedBox(height:30,
                  ),
                 RichText(text: TextSpan(children: [
                  TextSpan(text: 'By logging in or registering, you have agreed to ', style: biasaTextStyle.copyWith(fontSize: 10),
                  ),
                   TextSpan(text: 'the Terms and Conditions and Privacy Policy.',style: termsTextStyle.copyWith(fontSize: 10),
=======
                ],
              ),
            )
          ],
        ),
>>>>>>> 94a1f71a32c96716f204a9fd3992eff86f7073b4
      ),
    );
  }
}
