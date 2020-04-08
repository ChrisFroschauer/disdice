import 'package:flutter/material.dart';
import 'package:dis_dice/values.dart';

/*
 * OtherDice
 * 
 * a widget handling the dices of friends, them rolling etc...
 */
class OtherDice extends StatefulWidget {
  OtherDice({Key key, this.name}) : super(key: key);
  final String name;

  @override
  _OtherDiceState createState() => _OtherDiceState();
}

class _OtherDiceState extends State<OtherDice> {
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      primary: false,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        // TODO: Placeholders, generate/delete them as player enter/leave
        Material(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(BORDER_RADIUS),
            ),
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.all(PADDING_SMALL),
              child: const Text('Player 1'),
            )),
        Material(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(BORDER_RADIUS),
            ),
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.all(PADDING_SMALL),
              child: const Text('Player 2'),
            )),
        Material(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(BORDER_RADIUS),
            ),
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.all(PADDING_SMALL),
              child: const Text('Player 3'),
            )),
        Material(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(BORDER_RADIUS),
            ),
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.all(PADDING_SMALL),
              child: const Text('Gimli'),
            )),
        Material(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(BORDER_RADIUS),
            ),
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.all(PADDING_SMALL),
              child: const Text('Pippin'),
            )),
      ],
    );
  }
}
