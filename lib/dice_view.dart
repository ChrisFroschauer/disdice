
import 'package:dis_dice/bloc/dice_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class DiceView extends StatefulWidget {
  @override
  State<DiceView> createState() => _DiceViewState();
}

class _DiceViewState extends State<DiceView> {
  DiceBloc _diceBloc;

  @override
  void initState() {
    super.initState();
    _diceBloc = BlocProvider.of<DiceBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiceBloc, DiceState>(
      bloc: _diceBloc,
      builder: (context, state) {
        if (state is DiceRolled) {
          return Text(state.dice.number.toString());
        }
        else if (state is DiceInitial) {
          return Text("...");
        }
        return Container();
      },
    );
  }
}