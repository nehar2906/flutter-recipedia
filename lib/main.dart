import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Add this

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: SplashScreen(), // <- Start with Splash Screen
    );
  }
}
