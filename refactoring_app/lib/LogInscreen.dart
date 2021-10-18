import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'RegisterScreen.dart';

class LogInscreen extends StatefulWidget {
  @override
  _LogInscreenState createState() => _LogInscreenState();
}

class _LogInscreenState extends State<LogInscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[600],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('lib/images/splash.png'),
            radius: 120,
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            'Welcome  to VGP !',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'A one-stop portal for you to learn the latest information \nfrom this page',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xffFFAE88),
                  Color(0xff8F93EA),
                ],
              ),
            ),
            child: MaterialButton(
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
