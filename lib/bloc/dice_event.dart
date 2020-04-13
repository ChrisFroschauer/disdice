part of 'dice_bloc.dart';

abstract class DiceEvent {
  const DiceEvent();
}

class DiceRoll extends DiceEvent {
  const DiceRoll();
}

class DiceListen extends DiceEvent {
  const DiceListen();
}

class DiceUpdated extends DiceEvent {
  DiceModel updatedDice;

  DiceUpdated(this.updatedDice);
}