import 'package:flutter/material.dart';
import 'package:lab2/screens/home/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      initialRoute: '/',
      routes: {'/': (context) => HomeScreen()},
    );
  }
}
