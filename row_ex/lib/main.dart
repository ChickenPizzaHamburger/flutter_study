import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyColumn());
  }
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('MyColumn'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end, // 세로축으로 끝점에 정렬
        crossAxisAlignment: CrossAxisAlignment.end, // 가로축으로 끝점에 정렬
        children: [
          Container(width: 150, height: 150, color: Colors.red),
          Container(width: 150, height: 150, color: Colors.yellow),
          Container(width: 150, height: 150, color: Colors.blue),
          Container(
            // 기존의 height, color 속성은 삭제
            width: double.infinity, // 위젯이 제한없이 최대한의 공간을 차지하도록 한다. 투명 위젯
          ), // 컨테이너 추가
        ],
      ),
    );
  }
}
