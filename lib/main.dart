import 'package:flutter/material.dart';
import 'package:flutter_airbnb/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 오른쪽 상단 라벨같은거
      home: HomePage(),
    );
  }
}
