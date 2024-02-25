import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding_screen/onboarding_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'X x X',
              textAlign: TextAlign.center,
              style: GoogleFonts.merriweather(
                textStyle: TextStyle(
                color: const Color.fromARGB(255, 255, 49, 49),
                // fontFamily: 'Maharlika',
                fontSize: screenWidth * 0.25,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              'A Parody for Tinder',
              textAlign: TextAlign.center,
              style: GoogleFonts.lobsterTwo(
                textStyle: TextStyle(
                color: Colors.red,
                fontSize: screenWidth * 0.06,
              ),
            ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Image.asset(
              'assets/images/splash_screen/logo.png',
              height: screenHeight * 0.3,
            ),
            SizedBox(height: screenHeight * 0.05),
            SizedBox(
              width: screenWidth * 0.2,
              child: LinearProgressIndicator(
                backgroundColor: Colors.tealAccent[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
