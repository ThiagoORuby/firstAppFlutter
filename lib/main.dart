import 'package:flutter/material.dart';
import 'package:flutter_app1/homecalc.dart';
import 'package:flutter_app1/screens/home.dart';
import 'package:flutter_app1/screens/login.dart';
import 'package:flutter_app1/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

ThemeMode tema = ThemeMode.light;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Gym App',
      home: HomeCalcScreen(),
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          primarySwatch: white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          iconTheme: IconThemeData(color: Colors.black),
          buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.normal),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.white,
                  textStyle: TextStyle(color: Colors.black)))),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          iconTheme: IconThemeData(color: Colors.white),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black45,
                  textStyle: TextStyle(color: Colors.white)))),
      debugShowCheckedModeBanner: false, // Faz a bandeira de debug sumir
    );
  }
}
