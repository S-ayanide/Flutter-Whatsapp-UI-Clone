import 'package:flutter/material.dart';
import 'screens/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        accentColor: Color(0xFF25D366),

        tabBarTheme: TabBarTheme(
          labelColor: Colors.white
        ),
        textTheme: TextTheme(
          title: TextStyle(color: Colors.white, fontSize: 16.0),
          body1: TextStyle(color: Colors.black),
          button: TextStyle(color: Colors.white)
        ),
        bottomAppBarColor: Colors.white,
      ),
      home: Home(),
    );
  }
}