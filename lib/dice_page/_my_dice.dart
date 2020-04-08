import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dis_dice/values.dart';

/*
 * MyDice 
 * 
 * a widget handling my dice, rolling it etc...
 */
class MyDice extends StatefulWidget {
  MyDice({Key key, this.name}) : super(key: key);
  final String name;

  @override
  _MyDiceState createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int _value = 1;

  final int diceMax = 20; // TODO: hardcoded
  final Random rando = new Random();

  // throws a dice from 1 to diceMax
  void _throwDice() {
    setState(() {
      print("throw dice");
      _value = rando.nextInt(diceMax) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(BORDER_RADIUS),
        ),
        child: InkWell(
            onTap: () => _throwDice(), // handle your onTap here
            child: Column(
              children: <Widget>[
                new Flexible(
                    flex: 1,
                    child: Container(
                        padding: const EdgeInsets.all(PADDING_SMALL),
                        child: new SizedBox(
                            width: double.infinity,
                            child: new Text(
                              widget.name,
                              textAlign: TextAlign.left,
                            )))),
                new Flexible(
                  flex: 7,
                  child: Container(
                    padding: const EdgeInsets.all(PADDING_BIG),
                    child: new Center(
                      child: new Text("$_value",
                          style: new TextStyle(
                              fontSize: 70.0)),
                    ),
                    color: Colors.transparent,
                  ),
                )
              ],
            )));
  }
}
