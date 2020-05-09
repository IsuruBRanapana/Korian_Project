import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.only(top:20.0,bottom: 10.0,left: 200.0),
        child: RaisedButton(onPressed: (){},
        child:Text('Next',style: TextStyle(color:Colors.white),),
        color: Colors.purple,
        ),
      ) ,
        body: Column(children: <Widget>[
      Stack(
        
        children: <Widget>[
          OutlineButton(onPressed: (){},
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
                    image: AssetImage('images/editprofile.jpg'),
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
          ),
        

             Positioned(
            
              child: Container(
                child: CarouselSlider(
                  height: 250.0,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  items: <Widget>[
                    Card(
                        elevation: 10.0,
                        child: Container(
                            height: 250,
                            width: 200,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 150.0,
                                  width: 150.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/editprofile.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                Text('One')
                              ],
                            ))),
                    Card(
                      child: Container(
                          height: 250,
                          width: 200,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 150.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/editprofile.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Text('Two')
                            ],
                          )),
                    ),
                    Card(
                      child: Container(
                          height: 250,
                          width: 200,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 150.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/editprofile.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Text('Three')
                            ],
                          )),
                    ),
                    Card(
                      child: Container(
                          height: 250,
                          width: 200,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 150.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/editprofile.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Text('Four')
                            ],
                          )),
                    ),
                    Card(
                      child: Container(
                          height: 250,
                          width: 200,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 150.0,
                                width: 150.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/editprofile.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Text('Five')
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          
        ],
      ),

      
    ])
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
