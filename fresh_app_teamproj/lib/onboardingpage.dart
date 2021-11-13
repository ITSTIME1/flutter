import 'package:flutter/material.dart';

class Onboardingscreen extends StatefulWidget {
  @override
  _OnboardingscreenState createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  int contentState = 0;

  // Get titles
  List<String> titles = [
    '이런 앱이에요',
    '카메라와 이미지만으로?',
    '시작부터해봐요!',
  ];

  // Get description
  List<String> description = [
    '오직 카메라, 갤러리만을 사용하여 \nAI 데이터 수집을 통해서 실시간으로 \n채소, 과일의 상태를 파악해주고 \n고객 여러분들의 ‘빠른 선택’을 도와드립니다',
    '카메라 혹은 갤러리에서 찍은 이미지를 \n보여주세요!\n그러면 자동으로 인공지능이 고객님께 알려드립니다.',
    '장보러 가세요? \n오늘 식사도 신선한 재료를 사용하고 싶으신가요?\n저희가 도와 드립니다.',
  ];

  // Get image
  List<String> image = [
    'lib/assets/img1.png',
    'lib/assets/img2.png',
    'lib/assets/img3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Intro page 1
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    height: 100,
                  ),
                  Image(
                    width: MediaQuery.of(context).size.width /
                        0, // 미디어 쿼리 사이즈 데이터.
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
                    padding: EdgeInsets.only(top: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_back_sharp),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_forward_sharp),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Intro page 2
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    height: 100,
                  ),
                  Image(
                    width: MediaQuery.of(context).size.width /
                        0, // 미디어 쿼리 사이즈 데이터.
                    image: AssetImage('lib/images/img2.png'),
                  ),
                  Text(
                    '카메라와 이미지만으로?',
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
                    'AI',
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
                    '카메라 혹은 갤러리에서 찍은 이미지를 \n보여주세요!\n그러면 자동으로 인공지능이 고객님께 알려드립니다.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(98, 126, 109, 100),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_back_sharp),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_forward_sharp),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Intro page 3
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    height: 100,
                  ),
                  Image(
                    width: MediaQuery.of(context).size.width /
                        0, // 미디어 쿼리 사이즈 데이터.
                    image: AssetImage('lib/images/img3.png'),
                  ),
                  Text(
                    '시작부터해봐요!',
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
                    '시작',
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
                    '장보러 가세요? \n오늘 식사도 신선한 재료를 사용하고 싶으신가요?\n저희가 도와 드립니다.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(98, 126, 109, 100),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_back_sharp),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Icon(Icons.arrow_forward_sharp),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
