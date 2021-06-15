import 'package:flutter/material.dart';
import 'package:valans/SplashScreen/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "VALANS",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
