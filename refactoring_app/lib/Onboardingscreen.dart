import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Onboardingscreen extends StatefulWidget {
  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  final int _numPages = 3; // 최대 페이지 수는 3
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  // 인디케이터 페이지를 추가해줌.
  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  // indication 위젯을 만드는거임
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 12.0,
      width:
          isActive ? 24.0 : 16.0, // 처음에 isactive 값은 불리언 값이라 이 인디케이터가 범위안에 있을때
      // 선택된 처음의 비율을 24.0으로 보여주고 그 다음 아직 보여주지 않은 인디케이터 속성들을 16.0으로 보여준다는 의미다.
      decoration: BoxDecoration(
        color: isActive
            ? Colors.white
            : Color(0xFFC5E1A5), // 이것도 마찬가지로 처음에 보여줄 인디케이터 색상을 화이트
        // 아직 보여지지 않은 부분을 hex값으로 보여준다는 의미이다.
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          // 배경색 container 1
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9], // 밝기의 기울기
              colors: [
                Color(0xFF9CCC65), // hex값
                Color(0xFF9CCC65),
                Color(0xFF8BC34A),
                Color(0xFF8BC34A),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              // 세로 축으로
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, // 세로에서 stretch 가 없으면 세로로 쭉 긴 모양이 나오는데 이걸 사용하면 가로로 쭉 긴 모양을 사용할 수 있다.
              children: [
                Container(
                  alignment: Alignment.centerRight, // 버튼을 오른쪽으로 정렬
                  child: FlatButton(
                    onPressed: () => print('skip'), // testing
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 600.0,
                  child: PageView(
                    // pageview 를 이용해서 다중 페이지를 구현
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'lib/images/document.png',
                                ),
                                height: 300.0,
                                width: 400.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Connect people\nround the world',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'this is loading testing app please checking your app information',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(), // indicator 생성
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.center, // 가운데 정렬
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ), // width height
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ], // 세로 영역을 다쓴다.
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () => print('Get started'),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Get started',
                      style: TextStyle(
                        color: Color(0xFF5B16D0),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
