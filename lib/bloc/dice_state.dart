part of 'dice_bloc.dart';

abstract class DiceState extends Equatable {
  const DiceState();

  String get updatedDice => null;
}

class DiceInitial extends DiceState {
  @override
  List<Object> get props => [];
}

class DiceRolling extends DiceState {
  @override 
  List<Object> get props => [];
}

class DiceRolled extends DiceState {
  final DiceModel dice;

  const DiceRolled(this.dice);

  @override 
  List<Object> get props => [dice];
}
