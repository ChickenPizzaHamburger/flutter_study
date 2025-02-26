// material.dart 파일 업로드
import 'package:flutter/material.dart';

// 앱의 시작점인 main() 함수
void main() {
  runApp(const MyApp()); // runApp() 함수에 인자로 MyApp 위젯 전달
  // void main() => runApp(const MyApp()); 으로도 사용
}

// MyApp 위젯 생성
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp 위젯 불러오기
    return MaterialApp(
      // theme 속성 추가, ThemeData 위젯 전달
      theme: ThemeData(
        // Material design3로 앱의 메인 색상 지정해 주기
        colorSchemeSeed: Colors.blue,
      ),
      // home 속성 불러와서 MyPage 커스텀 위젯 전달
      home: MyPage(),
    );
  }
}

// Stateless 위젯으로 MyPage 위젯 생성하기
class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold 위젯 불러오기
    return Scaffold(
      // appBar 속성 불러오고 AppBar 위젯 전달해 주기
      appBar: AppBar(
        // title 속성 불러와서 Text 위젯으로 앱바 타이틀 지정해 주기
        title: const Text("My First App"),
        // backgroundColor 속성 불러와서 AppBar 배경색 지정해 주기(메인색상)
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // Body 속성 불러오고 Center 위젯 전달해 주기 (가운데)
      body: const Center(
        // Center 위젯의 child 속성 불러오고 Text 위젯 전달해 주기
        child: Text("Hello"),
      ),
    );
  }
}
