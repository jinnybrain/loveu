import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final emotions = [
      '😘',
      '🥰',
      '😍',
      '😊',
      '😁',
      '😄',
      '😃',
      '😀',
      '😆',
      '🤣',
      '🤓',
      '😎',
      '🤗',
      '🤠',
      '😸',
      '😽',
      '😻',
      '😺',
      "✌","😂","😝","😁","😱","👉","🙌","🍻","🔥","🌈","☀","🎈","🌹","💄","🎀","⚽","🎾","🏁","😡","👿","🐻","🐶","🐬","🐟","🍀","👀","🚗","🍎","💝","💙","👌","❤","😍","😉","😓","😳","💪","💩","🍸","🔑","💖","🌟","🎉","🌺","🎶","👠","🏈","⚾","🏆","👽","💀","🐵","🐮","🐩","🐎","💣","👃","👂","🍓","💘","💜","👊","💋","😘","😜","😵","🙏","👋","🚽","💃","💎","🚀","🌙","🎁","⛄","🌊","⛵","🏀","🎱","💰","👶","👸","🐰","🐷","🐍","🐫","🔫","👄","🚲","🍉","💛","💚"

    ];
    final texts = ['막 바뀜', '테스트 문구', '테스트', '정훈찡', '당신은 사랑받기 위해 출근한 사람', '쉬면서 해요', '기분좋아져라 얍'];


    final emotionIndex = Random().nextInt(emotions.length);
    final textIndex = Random().nextInt(texts.length);
    return Scaffold(
      
      body: GestureDetector(
        onTap: (){
          setState(() {
            
          });
        },
        child: Container(
          color: Colors.grey[200],
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                emotions[emotionIndex],
                style: TextStyle(fontSize: 128, fontWeight: FontWeight.bold),
              ),
              Text(
                texts[textIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(
                    Random().nextInt(225),
                    Random().nextInt(225), 
                    Random().nextInt(225), 1.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
