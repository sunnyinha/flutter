import 'package:flutter/material.dart';

// 이번 커밋 내용 요약

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          //상하좌우 여백 10
          // padding: EdgeInsets.all(10),
          //수평 여백 40
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              // 위에 여백 줄 때 사용함.
              SizedBox(
                height: 80,
              ),
              Row(
                //가로축 기준 오른쪽 정렬
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // 세로축 기준으로 오른쪽 정렬
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hey, Cloudy",
                        //글자 style 관련은 text에 TextStyle이 관리
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text("Welcome back",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
