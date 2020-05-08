import 'package:flutter/material.dart';

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
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
          )
        ],
      ),
    );
  }
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
