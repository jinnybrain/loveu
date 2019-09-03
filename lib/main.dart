import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

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
      "✌",
      "😂",
      "😝",
      "😁",
      "😱",
      "👉",
      "🙌",
      "🍻",
      "🔥",
      "🌈",
      "☀",
      "🎈",
      "🌹",
      "💄",
      "🎀",
      "⚽",
      "🎾",
      "🏁",
      "😡",
      "👿",
      "🐻",
      "🐶",
      "🐬",
      "🐟",
      "🍀",
      "👀",
      "🚗",
      "🍎",
      "💝",
      "💙",
      "👌",
      "❤",
      "😍",
      "😉",
      "😓",
      "😳",
      "💪",
      "💩",
      "🍸",
      "🔑",
      "💖",
      "🌟",
      "🎉",
      "🌺",
      "🎶",
      "👠",
      "🏈",
      "⚾",
      "🏆",
      "👽",
      "💀",
      "🐵",
      "🐮",
      "🐩",
      "🐎",
      "💣",
      "👃",
      "👂",
      "🍓",
      "💘",
      "💜",
      "👊",
      "💋",
      "😘",
      "😜",
      "😵",
      "🙏",
      "👋",
      "🚽",
      "💃",
      "💎",
      "🚀",
      "🌙",
      "🎁",
      "⛄",
      "🌊",
      "⛵",
      "🏀",
      "🎱",
      "💰",
      "👶",
      "👸",
      "🐰",
      "🐷",
      "🐍",
      "🐫",
      "🔫",
      "👄",
      "🚲",
      "🍉",
      "💛",
      "💚"
    ];
    final texts = [
      '막 바뀜',
      '테스트 문구',
      '테스트',
      '정훈찡',
      '당신은 사랑받기 위해 출근한 사람',
      '쉬면서 해요',
      '기분좋아져라 얍'
    ];

    final emotionIndex = Random().nextInt(emotions.length);
    final textIndex = Random().nextInt(texts.length);

    return Scaffold(
      backgroundColor: Color(0xFF222222),
      body: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset(
                        'images/cover1.png',
                        width: 600,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              emotions[emotionIndex],
                              style: TextStyle(
                                  fontSize: 128, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              texts[textIndex],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    texts[textIndex].length >= 8 ? 38 : 54,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(
                                    Random().nextInt(225),
                                    Random().nextInt(225),
                                    Random().nextInt(225),
                                    1.0),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Image.asset(
                        'images/cover2.png',
                        width: 600,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SplashPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class SplashAnimation extends StatelessWidget {
  SplashAnimation({Key key, this.controller, this.context})
      : opacityLogoIn = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.200,
              0.300,
              curve: Curves.ease,
            ))),
        opacityLogoOut = Tween<double>(
          begin: 1.0,
          end: 0.0,
        ).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.400, 0.500, curve: Curves.ease))),
        height = Tween<double>(
          begin: MediaQuery.of(context).size.height / 2,
          end: 0.0,
        ).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.470, 0.550, curve: Curves.easeOut)));

  final Animation<double> controller;
  final Animation<double> opacityLogoIn;
  final Animation<double> opacityLogoOut;
  final Animation<double> height;
  final BuildContext context;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: height.value,
                decoration: BoxDecoration(
                  color: Color(0xFF222222),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF222222),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: height.value,
                decoration: BoxDecoration(
                  color: Color(0xFF222222),
                  border: Border.all(
                    width: 1,
                    color: Color(0xFF222222),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          child: Opacity(
            opacity: opacityLogoOut.value,
            child: Container(
              child: Opacity(
                opacity: opacityLogoIn.value,
                child: Image.asset(
                  'images/cover2.png',
                  alignment: Alignment.center,
                  width: 600,
                  height: 100,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}

class SplashPage extends StatefulWidget {
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 3.0;
    return Container(
      child: SplashAnimation(
        controller: _controller.view,
        context: context,
      ),
    );
  }
}
