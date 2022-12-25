import 'package:flutter/material.dart';
import 'package:untitled/firstPage.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Gabriela'),
      debugShowCheckedModeBanner: false,
        home: FirstScreen()
    );
  }
}


