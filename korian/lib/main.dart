import 'package:flutter/material.dart';
import 'package:korian/app_screens/first_screen.dart';
import 'package:korian/app_screens/home.dart';
import 'package:korian/app_screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Korian',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}
