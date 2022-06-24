import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_hunt/screen/home/Pagehome.dart';
import 'package:hotel_hunt/screen/home/widget/WishPage/Wishlist.dart';
import 'package:hotel_hunt/screen/home/widget/TicketPage/ticket.dart';
import 'package:hotel_hunt/screen/home/widget/SchoolPage.dart';
import 'package:hotel_hunt/screen/home/widget/BottomNavbar/custom_bottom_navigation_bar.dart';
import 'package:hotel_hunt/screen/login/signup.dart';

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
        primaryColor: const Color(0xFF0B9ADD),
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
      home: const splashScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    TicketWidget(),
    wishPage(),
    const SchoolPage(),
  ];

  void _setIndex(value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: customNavBar(
          _currentIndex,
          (val) => _setIndex(val),
        ),
      ),
    );
  }
}

// --------------- SPLASH SCREEN -------------------- //

// ignore: camel_case_types
class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

// ignore: camel_case_types
class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUpPage())));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: Colors.blue,
        splash: 'assets/images/Logo.png',
        nextScreen: SignUpPage(),
        splashTransition: SplashTransition.rotationTransition
        // child: Scaffold(
        //   body: SizedBox.expand(
        //     child: Container(
        //       color: const Color(0xFF0B9ADD),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: <Widget>[
        //           Container(
        //             height: MediaQuery.of(context).size.height,
        //             decoration: const BoxDecoration(
        //                 image: DecorationImage(
        //                     image: AssetImage("assets/images/Logo.png"))),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        );
  }
}
