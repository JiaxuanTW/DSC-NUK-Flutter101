import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 運用 dart:math 函式庫
  // 實例化 Random()，產生 rand 物件
  // 建立 private 變數，並初始化為 1
  var rand = Random();
  int _randomNumber1 = 1;
  int _randomNumber2 = 1;

  void rollDice() {
    // 呼叫這個函示來隨機變更骰子數字
    // rand.nextInt() 該方法傳入一個整數 n，回傳 0(含) ~ n(不含) 之亂數。
    _randomNumber1 = rand.nextInt(6) + 1;
    _randomNumber2 = rand.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        // 主畫面標題
        title: Text('Digital Dice'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                // Padding 不可以放在 Expanded 上層，否則會失去效果
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$_randomNumber1.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/dice$_randomNumber2.png'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        // 懸浮動作按鈕
        onPressed: () {
          setState(() {
            // 呼叫 setState 方法來更新 UI
            rollDice(); // 呼叫函式來修改 _randomNumber1、_randomNumber2
          });
        },
        icon: Icon(Icons.refresh),
        label: Text('Roll the Dice'),
      ),
    );
  }
}
