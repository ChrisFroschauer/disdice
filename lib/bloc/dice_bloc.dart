import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dis_dice/model/dice_model.dart';
import 'package:dis_dice/repository/dice_repository.dart';
import 'package:equatable/equatable.dart';

part 'dice_event.dart';
part 'dice_state.dart';

class DiceBloc extends Bloc<DiceEvent, DiceState> {
  final DiceRepository diceRepository = DiceRepository();
  StreamSubscription diceSubscription;

  DiceBloc() {
    diceSubscription = diceRepository.throws().listen((event) {
        add(DiceUpdated(event));
      });
  }

  @override
  DiceState get initialState => DiceInitial();

  @override
  Stream<DiceState> mapEventToState(
    DiceEvent event,
  ) async* {
    if (event is DiceUpdated) {
      yield DiceRolled(event.updatedDice);
    }
  }
}
