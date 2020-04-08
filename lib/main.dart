import 'package:dis_dice/pages/home_page/StartScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(DisDice());



class DisDice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.white,

      ),
      home: StartScreen()
    );
  }
}
