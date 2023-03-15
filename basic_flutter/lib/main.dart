import 'package:flutter/material.dart';

// 오늘 알게 된 점
// flutter구성은 widget의 모음
// scaffold는 가장 큰 레이아웃 느낌!
// appBar: scaffold 상단의 앱 바
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello flutter!"),
        ),
        body: Text("Hello world!"),
      ),
    );
  }
}
