import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Flexible 하드코딩되는 값을 만들어줌
          Flexible(
            //flex를 통해 각각의 위젯의 차지 비율을 정할 수 있음
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
