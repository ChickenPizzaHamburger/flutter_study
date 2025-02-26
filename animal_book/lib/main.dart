import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배너 제거
      title: "Animal Sounds",
      theme: ThemeData(colorSchemeSeed: Colors.blue), // blue 컬러로 메인 색상 지정
      home: const AnimalSound(), // 커스텀 위젯인 AnimalSounds 위젯 호출
    );
  }
}

class AnimalSound extends StatelessWidget {
  const AnimalSound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // M3 테마로 앱바 배경색 지정
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Animal sounds"),
        centerTitle: true, // 앱바 타이틀을 중앙에 배치
        leading: SizedBox(
          // 좌측에 배치 (우측은 actions)
          height: 50,
          width: 150,
          child: Lottie.asset("lottie/cat.json"), // Lottie JSON 등록
        ),
      ),
      body: Column(), // 요소들을 세로로 배치하기 위한 Column 위젯 전달
    );
  }
}
