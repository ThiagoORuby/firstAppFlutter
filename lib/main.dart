import 'package:flutter/material.dart';
import 'package:flutter_app1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false, // Faz a bandeira de debug sumir
    );
  }
}
