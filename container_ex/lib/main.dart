import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyContainer());
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // 앱 배경색을 blue로 지정
      body: SafeArea(
        child: Container(
          // 앱바 없이 곧바로 body 속성에서 Container 위젯 전달
          color: Colors.red,
          width: 150,
          height: 150,
          margin: EdgeInsets.only(top: 50, left: 50),
          child: const Text('Hello, Flutter!'),
        ),
      ),
    );
  }
}
