// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_hunt/screen/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(Object context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xFFF5F6F6),
        primaryColor: const Color(0xFF811B83),
        accentColor: const Color(0xFFFA5019),
        textTheme: TextTheme(
          headline1: GoogleFonts.poppins(
            color: const Color(0xFF100E34),
          ),
          bodyText1: TextStyle(
            color: const Color(0xFF100E34).withOpacity(0.5),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
