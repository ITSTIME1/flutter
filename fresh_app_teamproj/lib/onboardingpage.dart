import 'package:flutter/material.dart';

class Onboardingscreen extends StatefulWidget {
  @override
  _OnboardingscreenState createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Image(
                    image: AssetImage('lib/images/img1.png'),
                  ),
                  Text(
                    '이런 앱이에요',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Fresh',
                    style: TextStyle(
                      color: Color.fromRGBO(6, 172, 72, 100),
                      fontSize: 20,
                      fontFamily: 'impact',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    '오직 카메라, 갤러리만을 사용하여 \nAI 데이터 수집을 통해서 실시간으로 \n채소, 과일의 상태를 파악해주고 \n고객 여러분들의 ‘빠른 선택’을 도와드립니다',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(98, 126, 109, 100),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            '다음',
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            '이전',
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
