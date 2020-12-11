import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Dice',
      home: HomePage(), // 主頁面（傳入Widget）
      debugShowCheckedModeBanner: false, // 移除 debugModeBanner
    );
  }
}
