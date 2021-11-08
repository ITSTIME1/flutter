import 'dart:async';
import 'onboardingpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(TeamApp());

class TeamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fresh project',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 0),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Onboardingscreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(
                  167, 248, 154, 0.82), // main color hex -> rgba value
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Fresh',
                style: TextStyle(
                  fontSize: 100,
                  fontFamily: 'impact', // free font 'Impact'
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(10, 10),
                      blurRadius: 4,
                    ),
                  ],
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
