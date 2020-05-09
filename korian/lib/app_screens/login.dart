import 'package:flutter/material.dart';
import 'package:korian/common_widgets/social_signin_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 2.0),
            child: ClipPath(
              clipper: ClippingClass(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 0.5 * MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/back5.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFFAD1457).withRed(99).withOpacity(0.6),
                      Color(0xFFAD1457).withRed(99).withOpacity(0.0)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 1 * MediaQuery.of(context).size.height / 15,
            left: 1 * MediaQuery.of(context).size.width / 5,
            child: Container(
              child: Text(
                'සාදරයෙන්',
                style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
          ),
          Positioned(
            top: 2.25 * MediaQuery.of(context).size.height / 15,
            left: 1.65 * MediaQuery.of(context).size.width / 5,
            child: Container(
              child: Text(
                'පිළිගනිමු..',
                style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 0.13 * MediaQuery.of(context).size.height,
              ),
              Center(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  width: 0.7 * MediaQuery.of(context).size.width,
                  child: SocialSignInButton(
                    text: 'Sign In with Google',
                    assetName: 'images/google-logo.png',
                    color: Colors.white,
                    //TODO : add on pressed
                    onPressed: () {},
                    textColor: Colors.black87,
                    height: 40.0,
                  ),
                ),
              ),
              SizedBox(
                height: 0.02 * MediaQuery.of(context).size.height,
              ),
              Center(
                child: Container(
                  width: 0.7 * MediaQuery.of(context).size.width,
                  child: SocialSignInButton(
                    assetName: 'images/facebook-logo.png',
                    text: 'Sign In with Facebook',
                    color: Color(0xFF334D92),
                    onPressed: () {},
                    textColor: Colors.white,
                    height: 40.0,
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: ClipPath(
              clipper: BottomClipper(),
              child: Container(
                height: 0.15*MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFAD1457).withRed(99).withOpacity(0.7),
                        Color(0xFFAD1457).withRed(99).withOpacity(0.5)
                      ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var sw = size.width;
    var sh = size.height;
    Path path = Path();
    path.lineTo(0, 0.1*sh);
    path.quadraticBezierTo(sw / 4, sh, 3 * sw / 5, 1 * sh / 4);
    path.quadraticBezierTo(3 * sw / 4, 0, sw, 0);
    path.lineTo(sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)=>false;
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var sw = size.width;
    var sh = size.height;
    Path path = Path();
    path.lineTo(0, 5 * sh / 6);
    path.quadraticBezierTo(sw / 4, sh, 3 * sw / 5, 3 * sh / 4);
    path.quadraticBezierTo(3 * sw / 4, 5 * sh / 8, sw, 3 * sh / 5);
    path.lineTo(sw, sh / 2);
    path.lineTo(sw, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
