import 'package:dis_dice/pages/dice_page/dice_page.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameField = TextField(
      obscureText: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Your Display Name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final joinRoomBtn = RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DicePage(title: "Dice Page", myName: "Till",)),
        );
      },
      child: const Text('Join Room', style: TextStyle(fontSize: 20)),
    );

    final createRoomBtn = RaisedButton(
      onPressed: () {},
      child: const Text('Create Room', style: TextStyle(fontSize: 20)),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                nameField,
                SizedBox(height: 25.0),
                joinRoomBtn,
                SizedBox(height: 5.0),
                createRoomBtn,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
