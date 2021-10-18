import 'dart:async';
import 'package:flutter/widgets.dart';
import 'LogInscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firbase App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
    // 3초 뒤에 LogIn 페이지로 넘어감
    // After 3seconds move on LogIn Page
    Timer(
        Duration(seconds: 0),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LogInscreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // 넓이도 가장 끝으로
        height: double.infinity, // 높이도 가장 끝으로 화면을 채우기 위해 사용.
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color(0xFFA5D6A7),
              const Color(0xFF1B5E20),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'lib/images/vagitable.jpg',
                    ),
                    radius: 80,
                  ),
                  SizedBox(
                    height: 200.0,
                  ),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Welcome to VGP\nPlease wait now connecting server',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
