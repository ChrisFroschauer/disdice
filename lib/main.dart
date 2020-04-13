import 'package:dis_dice/bloc/dice_bloc.dart';
import 'package:dis_dice/dice_view.dart';
import 'package:dis_dice/pages/home_page/StartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        home: Scaffold(
          appBar: AppBar(title: Text('DisDice')),
          body: BlocProvider(
            create: (context) => DiceBloc(),
            child: DiceView(),
          ),
        ));
  }
}
