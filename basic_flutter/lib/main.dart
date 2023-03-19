import 'package:flutter/material.dart';

// 이번 커밋 내용 요약
//bar 아래 부분: body
//클래스 생성 및 생성자
class Player {
  /*? 있는 건 있어도 되고 없어도 됨*/
  String? name;
  /*named parameter*/
  Player({required this.name});
}

void main() {
  var name = Player(name: "sunny");
  //sunny.name으로 접근 가능
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 99,
          title: Text("Hello flutter!"),
        ),
        //bar 아래 부분: body
        // 마우스 올리면 center에 child 필요함을 알 수 있음
        body: Center(
          child: Text("Hello world!"),
        ),
      ),
    );
  }
}
