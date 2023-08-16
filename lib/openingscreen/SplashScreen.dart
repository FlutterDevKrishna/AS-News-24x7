import 'dart:async';
import 'package:as24x7/openingscreen/HomeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000), // Animation duration
    );

    // Start the animation
    _animationController.forward();

    // Set a timer for the splash screen duration
    _timer = Timer(Duration(seconds: 5), () {
      // Navigate to the main screen after the timer expires
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: _animationController,
          child: Container(child: Image.asset('assets/logo.png')), // Your logo widget
        ),
      ),
    );
  }
}
