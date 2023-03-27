import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  //부모 요소에 접근하는 법: BuildContext(위젯트리 위치 제공 및 데이터 접근 가능)
  //context = MyLargeTitle Text의 부모 요소들의 모든 정보를 담음
  Widget build(BuildContext context) {
    return Text(
      "My Large Title",
      style: TextStyle(
        fontSize: 30,
        //context(부모 요소)들 중에 theme을 찾고
        // 그곳의 texttheme-> textTheme-> titleLarge-> color에 접근
        // ?는 null safety 에러 방지를 위해 있으면 넣고 없음 말고의 의미
        // ?를 !로 바꾸고 null값 절대 아님을 강조해도 에러에서 벗어날 수 있음.

        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
