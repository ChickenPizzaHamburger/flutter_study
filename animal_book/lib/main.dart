import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:audioplayers/audioplayers.dart';

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

  void playSound(String name) {
    final AudioPlayer player = AudioPlayer();
    player.play(AssetSource('$name.wav'));
  }

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
      body: Column(
        // 세 개의 Row 위젯을 동일한 간격으로 배치
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // 요소들을 세로로 배치하기 위한 Column 위젯 전달
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10), // 상단에 10만큼의 여백 확보
            child: Row(
              // Padding 위젯의 자식 위젯이 됨
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // 자식 위젯들에 동일한 간격 적용 (가로)
              children: [
                Column(
                  // 첫 번째 Row 위젯의 첫 번째 자식 위젯
                  children: [
                    GestureDetector(
                      // 동작을 감지해서 이벤트를 발생해준다.
                      onTap: () {
                        // onTap 속성에 익명 콜백 함수 전달
                        // print("Bear image is tapped"); // 이미지를 탭하면 콘솔창에 메시지 출력
                        playSound(
                          'bear',
                        ); // playSound() 메서드를 호출할 때 동물 이름을 인자 값으로 전달
                      },
                      child: Image.asset("images/bear.png", height: 100),
                    ),
                    Padding(
                      // 이미지 밑에 여백
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ), // 상하에 10씩 여백 확보
                      child: Container(
                        // 컨테이너를 밑줄처럼 사용
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    const Text("Bears", style: TextStyle(fontSize: 20)), // 글자
                  ],
                ),
                Column(
                  // 첫 번째 Row 위젯의 두 번째 자식 위젯
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('fox');
                      },
                      child: Image.asset("images/fox.png", height: 100),
                    ),
                    Padding(
                      // 이미지 밑에 여백
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ), // 상하에 10씩 여백 확보
                      child: Container(
                        // 컨테이너를 밑줄처럼 사용
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    const Text("Fox", style: TextStyle(fontSize: 20)), // 글자
                  ],
                ),
              ],
            ),
          ), // 첫 번째 Row 위젯 끝
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, // 자식 위젯들에 동일한 간격 적용 (가로)
            children: [
              Column(
                // 두 번째 Row 위젯의 첫 번째 자식 위젯
                children: [
                  GestureDetector(
                    onTap: () {
                      playSound('koala');
                    },
                    child: Image.asset("images/koala.png", height: 100),
                  ),
                  Padding(
                    // 이미지 밑에 여백
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ), // 상하에 10씩 여백 확보
                    child: Container(
                      // 컨테이너를 밑줄처럼 사용
                      width: 115,
                      height: 2,
                      color: Colors.green,
                    ),
                  ),
                  const Text("Koala", style: TextStyle(fontSize: 20)), // 글자
                ],
              ),
              Column(
                // 두 번째 Row 위젯의 두 번째 자식 위젯
                children: [
                  GestureDetector(
                    onTap: () {
                      playSound('camel');
                    },
                    child: Image.asset("images/camel.png", height: 100),
                  ),
                  Padding(
                    // 이미지 밑에 여백
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ), // 상하에 10씩 여백 확보
                    child: Container(
                      // 컨테이너를 밑줄처럼 사용
                      width: 115,
                      height: 2,
                      color: Colors.green,
                    ),
                  ),
                  const Text("Camel", style: TextStyle(fontSize: 20)), // 글자
                ],
              ),
            ],
          ), // 두 번째 Row 위젯 끝
          Padding(
            padding: const EdgeInsets.only(bottom: 10), // 하단에 10만큼 여백 확보
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // 자식 위젯들에 동일한 간격 적용 (가로)
              children: [
                Column(
                  // 세 번째 Row 위젯의 첫 번째 자식 위젯
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('lion');
                      },
                      child: Image.asset("images/lion.png", height: 100),
                    ),
                    Padding(
                      // 이미지 밑에 여백
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ), // 상하에 10씩 여백 확보
                      child: Container(
                        // 컨테이너를 밑줄처럼 사용
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    const Text("Lion", style: TextStyle(fontSize: 20)), // 글자
                  ],
                ),
                Column(
                  // 세 번째 Row 위젯의 두 번째 자식 위젯
                  children: [
                    GestureDetector(
                      onTap: () {
                        playSound('tiger');
                      },
                      child: Image.asset("images/tiger.png", height: 100),
                    ),
                    Padding(
                      // 이미지 밑에 여백
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ), // 상하에 10씩 여백 확보
                      child: Container(
                        // 컨테이너를 밑줄처럼 사용
                        width: 115,
                        height: 2,
                        color: Colors.green,
                      ),
                    ),
                    const Text("Tiger", style: TextStyle(fontSize: 20)), // 글자
                  ],
                ),
              ],
            ),
          ), // 세 번째 Row 위젯 끝
        ],
      ), // 가장 외곽의 Column 위젯 끝
    );
  }
}
