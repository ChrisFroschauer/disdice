import 'package:flutter/material.dart';
import 'package:dis_dice/values.dart';
import '_my_dice.dart';
import '_other_dice.dart';

class DicePage extends StatefulWidget {
  DicePage({Key key, this.title, this.myName}) : super(key: key);

  final String title;
  final String myName;

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Flexible(
              flex: 1,
              child: new Container(
                color: Theme.of(context).accentColor,
                padding: const EdgeInsets.all(PADDING_BIG), 
                child: new OtherDice())),
          new Divider(
            color: Theme.of(context).primaryColor,
            thickness: 1.0,
            height: 1.0,),
          Flexible(
              flex: 1,
              child: Container(
                  color: Theme.of(context).accentColor, 
                  padding: const EdgeInsets.all(PADDING_BIG),
                  child: new MyDice(name: widget.myName)))
        ],
      ),
    );
  }
}