import 'package:flutter/material.dart';
import 'package:dis_dice/dice_page/dice_page.dart';

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
      home: DicePage(
        title: 'Dice Page',
        myName: "My Name",
      ),
    );
  }
}
