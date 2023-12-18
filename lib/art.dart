import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 0), // 텍스트 아래 패딩 추가
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // 가로축 중앙 정렬
                children: [
                  Text(
                    '위시',
                    style: TextStyle(fontSize: 44),
                  ),
                  Text(
                    '뱅크',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 0), // 로그인/회원가입 텍스트 아래 패딩 추가
              child: Text(
                '로그인 / 회원가입을 하고 계속하기',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10), // 이미지 아래 패딩 추가
              child: Image.asset("assets/images/bank.png"),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('구글 계정으로 로그인'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20), // '또는' 텍스트 위아래 패딩 추가
              child: Text(
                '-------------또는-------------',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('회원가입'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
