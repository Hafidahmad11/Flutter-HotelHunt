import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:hotel_hunt/main.dart';

import '../../rounded_button.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/pana.png'))),
              ),
              Container(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: const <Widget>[
                          Text(
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            icon: Icon(Icons.alternate_email,
                                color: Color(0xFFBFBFBF)),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBFBFBF)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF0B9ADD)))),
                      ),
                      const SizedBox(height: 10.0),
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                            icon: Transform.rotate(
                                angle: -40 * math.pi / -180,
                                child: const Icon(
                                  Icons.key,
                                  color: Color(0xFFBFBFBF),
                                  size: 24,
                                )),
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFBFBFBF)),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF0B9ADD)))),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20.0),
                      RoundedButton(
                        btnText: 'Sign In ',
                        onBtnPressed: signIn,
                      ),

                      // SizedBox(
                      //   height: 40.0,
                      //   child: Material(
                      //     borderRadius: BorderRadius.circular(10.0),
                      //     shadowColor: const Color(0xFF0B9ADD),
                      //     color: const Color(0xFF0B9ADD),
                      //     elevation: 7.0,
                      //     child: GestureDetector(
                      //       onTap: () {
                      //         Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //                 builder: (context) => const MainPage()));
                      //       },
                      //       child: const Center(
                      //         child: Text(
                      //           'Login',
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontWeight: FontWeight.bold,
                      //               fontFamily: 'Montserrat'),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }
}
