import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // 이번 앱에서는 theme 속성은 사용하지 않음
      home: Character(), // 커스텀 위젯인 Charactor 위젯 호출
    );
  }
}

class Character extends StatelessWidget {
  const Character({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  배경색 지정
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        // AppBar 타이틀 지정
        title: const Text("BBANTO ID CARD"),

        backgroundColor: Colors.amber[700], // 멤버 배경색 지정 (amber = 호박색)
        centerTitle: true, // 타이틀 가운데로
      ),
      body: Padding(
        // const 키워드를 삭제해야한다. (저장할 때마다 사태에 변화가 없을 위젯 앞에는 키워드)
        // 하나의 자식 위젯을 가질 수 있다.
        padding: EdgeInsets.all(30.0), // 위젯의 모든 모서리 공간에 30.0만큼 공간을 추가
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 가로축 정렬 속성
          // Column 위젯은 자식 위젯을 세로로 배치해 주는 특성이 있다.
          children: [
            Center(
              // Image.asset 위젯의 부모 위젯이 됨 (자식은 child 속성을 가져야한다.)
              // 이 안에 자식 위젯들 배치
              child: Image.asset(
                'images/ch1.png', // 이미지 경로 지정
                width: 220, // 이미지의 가로 사이즈 지정
                height: 150, // 이미지의 세로 사이즈 지정
              ),
            ),
            Divider(
              // 위젯과 위젯 사이도 콤마(,)로 구분되어야 한다.
              height: 40, // 위로 20, 아래로 20
              color: Colors.grey[850],
              thickness: 0.5, // divider(나누는 것)의 두께
            ),
            const Text(
              'NAME', // 텍스트 뒤에 반드시 콤마 입력
              style: TextStyle(
                // style 속성에 TextStyle 위젯 전달
                color: Colors.white, // 텍스트 컬러를 화이트로 지정
                letterSpacing: 2.0, // 철자 간격을 2.0으로 지정
              ),
            ),
            const SizedBox(
              // 위젯 간의 공간 확보
              height: 10.0, // 세로 방향으로 10만큼 공간 확보
            ),
            const Text(
              'BBANTO',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, // 철자 간격 지정
                fontSize: 28, // 폰트 크기 지정
                fontWeight: FontWeight.bold, // 폰트 굵기 지정 (w100 ~ w900)
              ),
            ),
            const SizedBox(
              // 위젯 간의 공간 확보
              height: 30.0, // 세로 방향으로 10만큼 공간 확보
            ),
            const Text(
              'BBANTO POWER LEVEL', // 텍스트 뒤에 반드시 콤마 입력
              style: TextStyle(
                // style 속성에 TextStyle 위젯 전달
                color: Colors.white, // 텍스트 컬러를 화이트로 지정
                letterSpacing: 2.0, // 철자 간격을 2.0으로 지정
              ),
            ),
            const SizedBox(
              // 위젯 간의 공간 확보
              height: 10.0, // 세로 방향으로 10만큼 공간 확보
            ),
            const Text(
              '10',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, // 철자 간격 지정
                fontSize: 28, // 폰트 크기 지정
                fontWeight: FontWeight.bold, // 폰트 굵기 지정 (w100 ~ w900)
              ),
            ),
            const SizedBox(height: 30), // 세로 방향으로 위젯 사이 공간 확보
            const Row(
              // 자식 위젯들을 가로로 배치
              children: [
                Icon(Icons.check_circle_outline), // 아이콘 위젯
                SizedBox(
                  // 가로 방향으로 Icon 위젯과 Text 위젯 사이에 공간 확보
                  width: 10,
                ),
                Text(
                  'Using lightsaber',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            const SizedBox(height: 3), // 세로 방향으로 위젯 사이 공간 확보
            const Row(
              // 자식 위젯들을 가로로 배치
              children: [
                Icon(Icons.check_circle_outline), // 아이콘 위젯
                SizedBox(
                  // 가로 방향으로 Icon 위젯과 Text 위젯 사이에 공간 확보
                  width: 10,
                ),
                Text(
                  'Hero face tattoo',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            const SizedBox(height: 3), // 세로 방향으로 위젯 사이 공간 확보
            const Row(
              // 자식 위젯들을 가로로 배치
              children: [
                Icon(Icons.check_circle_outline), // 아이콘 위젯(체크가 있는 원)
                SizedBox(
                  // 가로 방향으로 Icon 위젯과 Text 위젯 사이에 공간 확보
                  width: 10,
                ),
                Text(
                  'Fire flames',
                  style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Center(
              child: CircleAvatar(
                // 사용자 이미지를 동그랗게 출력하는 형태
                // AssetImage는 위젯이 아닌 ImageProvider의 하위 클래스(이미지 출력)
                backgroundImage: const AssetImage('images/ch2.png'),
                backgroundColor: Colors.amber[800], // 투명이미지 사용하기 위해서 배경색 똑같이 함
                radius: 50, // 원의 크기 조정
              ),
            ),
          ],
        ),
      ),
    );
  }
}
