import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyParent());
  }
}

class MyParent extends StatelessWidget {
  const MyParent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // 인스턴스를 생성하면서 데이터 전달
        child: MyStateless(title: "Hello, Flutter!"),
      ),
    );
  }
}

class MyStateless extends StatelessWidget {
  // 생성자에서 데이터를 받아서 초기화 (필수적으로 title이 들어가도록 한다.)
  const MyStateless({super.key, required this.title});

  final String title;

  @override
  // build() 메서드를 호출해서 전달된 데이터를 반영하기 위해 Text 위젯 리빌드
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize: 25));
  }
}
