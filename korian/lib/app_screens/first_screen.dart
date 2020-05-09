import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          OutlineButton(
            onPressed: () {},
            child: Text('Skip'),
            color: Colors.purple,
          ),
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
                'සිහින දේශය ගැන ඔබට',
                style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: CarouselSlider(
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 10),
                autoPlayInterval: Duration(seconds: 15),
                height: 0.7 * MediaQuery.of(context).size.height,
                aspectRatio: 3.0,
                enlargeCenterPage: true,
                items: <Widget>[
                  Card(
                    // color: Color(0xFFAD1457).withRed(99).withOpacity(0.8),
                    elevation: 10.0,
                    child: Container(
                      height: 0.7 * MediaQuery.of(context).size.height,
                      width: 3 * MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              height: 150.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/back2.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Text('One')
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    child: Container(
                      height: 0.7 * MediaQuery.of(context).size.height,
                      width: 3 * MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              height: 150.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/back3.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Text('Two')
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    child: Container(
                      height: 0.7 * MediaQuery.of(context).size.height,
                      width: 3 * MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              height: 150.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/back2.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Text('Three')
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    child: Container(
                      height: 0.7 * MediaQuery.of(context).size.height,
                      width: 3 * MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              height: 150.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/back3.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Text('Four')
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    child: Container(
                      height: 0.7 * MediaQuery.of(context).size.height,
                      width: 3 * MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              height: 150.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/back3.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Text('Five')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.05 * MediaQuery.of(context).size.height,
            right: 0.1 * MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Color(0xFFAD1457).withRed(99),
                      ),
                      bottom: BorderSide(
                        width: 1,
                        color: Color(0xFFAD1457).withRed(99),
                      ),
                      left: BorderSide(
                        width: 1,
                        color: Color(0xFFAD1457).withRed(99),
                      ),
                      right: BorderSide(
                        width: 1,
                        color: Color(0xFFAD1457).withRed(99),
                      ))),
              height: 40,
              child: OutlineButton(
                borderSide: BorderSide.none,
                onPressed: () {},
                color: Color(0xFFAD1457).withRed(99),
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFAD1457).withRed(99),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.05 * MediaQuery.of(context).size.height,
            left: 0.1 * MediaQuery.of(context).size.width,
            child: Container(
              height: 40,
              child: OutlineButton(
                borderSide: BorderSide.none,
                onPressed: () {},
                color: Color(0xFFAD1457).withRed(99),
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                    //color: Color(0xFFAD1457).withRed(99),
                  ),
                ),
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
