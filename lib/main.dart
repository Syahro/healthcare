import 'package:flutter/material.dart';
import 'package:healthcare/pages/onboard_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardPage(
        imageUrl: 'assets/livesafer.png',
        title: 'Discover Top Doctors',
        subTitle: 'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Phasellus lacinia libero ut metus\nconvallis tempor. Vestibulum consequat, tortor\nmattis consequat',
        isFirst: true,
        isSecond: false,
        isLast: false,
        codeAct: 'isFirst',
      ),
    );
  }
}
