import 'package:flutter/material.dart';

class MyParent extends StatelessWidget {
  const MyParent({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: MyStatelessWidget(title: "Hello, Flutter!")),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  final String title;

  // 생성자에서 데이터를 받아서 초기화합니다.
  const MyStatelessWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // 초기화된 데이터를 사용하여 UI를 빌드합니다.
    return Text(title, style: const TextStyle(fontSize: 25));
  }
}
