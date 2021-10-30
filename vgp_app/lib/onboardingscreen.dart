import 'package:flutter/material.dart';
import 'login.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller =
      PageController(); // pagecontroller 로 _controller를 사용하겠다.
  int currentIndex = 0; // 현재 페이지를 0페이지부터

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        children: [
          // pageview 를 보여주게 된다.
          // image path 를 사용한다.

          /* onboarding screen 에서는 사용자가 처음에 main 화면에서 넘어온 후 가장 첫번째로 마주하는 화면입니다.
          그렇기에 짧은 단어로 설명할 수 있는 것으로 모든걸 보여주어야 합니다.
          여기서 강조하는 스크린의 의미는 '친환경, 편리함, 서비스마인드'


          ※주의 사항※
          1. 단어가 길면 안됨.
          2. 문장이 과해서는 안됨 최대 4줄 이하.
          3. image 선택을 잘해야됨.
          */

          //1. 이 앱의 목적
          OnboardingScreenItems(
            imagepath: 'lib/images/img1.png',
            color: Colors.white10,
            title: "'우리는 이렇게 사용해요'",
            subtitle:
                "'VGP'는 'Very Growth People'의 약자로 \n                      '매우 성장하는' \n  사람들이란 의미를 내포하고 있습니다.",
          ),

          // 2. 사용법 단어 : 편리함
          OnboardingScreenItems(
            imagepath: 'lib/images/img1.png',
            color: Colors.white,
            title: "Get Inspired",
            subtitle: "Don't know what to eat? take",
          ),

          // 3. 앱의 실현황 : 현황 이미지
          OnboardingScreenItems(
            imagepath: 'lib/images/img1.png',
            color: Colors.white,
            title: "Get Inspired",
            subtitle: "Don't know what to eat? take",
          ),
        ],
      ),
      // True == currentIndex == LastPage == currentIndex == 2
      bottomNavigationBar: currentIndex == 2
          ? Container(
              height: size.height / 10,
              width: size.width,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Container(
                height: size.height / 15,
                width: size.width / 1.8,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
            )
          // 마지막 페이지가 아닐경우에 보여지는 페이지
          : Container(
              height: size.height / 14,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFA5D6A7), //
                    Color(0xFF81C784),
                  ],
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width / 40,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: FlatButton(
                      onPressed: () => print('성공'),
                      child: Text(
                        '이전',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 4.5,
                  ),
                  for (int i = 0; i <= 2; i++)
                    i == currentIndex ? buildCircle(true) : buildCircle(false),
                  SizedBox(
                    width: size.width / 4.5,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: FlatButton(
                      onPressed: () => print('성공'),
                      child: Text(
                        '다음',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  // 원모양 buildcircle widget
  Widget buildCircle(bool isActive) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        height: isActive ? 12 : 8,
        width: isActive ? 12 : 8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
      ),
    );
  }
}

class OnboardingScreenItems extends StatelessWidget {
  final String imagepath, title, subtitle;
  final Color color;

  // 스크린의 이미지값, 제목, 부제목, 색상 값을 사용한다.
  OnboardingScreenItems(
      {required this.imagepath,
      required this.subtitle,
      required this.title,
      required this.color});

  // onboarding screen basic screen
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // mediaquery 에서 사용되는 사이즈를 사용한다.
    return Container(
      height: size.height, // 세로 값도 mediaquery 값으로 사용
      width: size.width, // 가로의 값도 mediaquery 값으로 사용
      color: color,
      child: Column(
        children: [
          SizedBox(
            height: size.height / 8,
          ),

          // image section
          Container(
            height: size.height / 2.5,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagepath),
                fit: BoxFit.none,
              ),
            ),
          ),

          SizedBox(
            height: size.height / 30,
          ),

          // title section
          Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          SizedBox(
            height: size.height / 25,
          ),

          // subtitle section
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              subtitle,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          // flat button add consider. 전페이지로 가는거 다음페이지로 가는거.
        ],
      ),
    );
  }
}
