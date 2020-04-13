
import 'dart:io';

import 'dart:math';

import 'package:dis_dice/model/dice_model.dart';

class RandomClient {
    const RandomClient();

    Future<DiceModel> getRandomNumber() async {
    sleep(Duration(milliseconds: 500));
    final response = Random().nextInt(19) + 1;
    

    return DiceModel(response);
  }

  Stream<DiceModel> getThrowsStream() {
    return Stream.periodic(Duration(milliseconds: 2000), (_) {
      num rnd = Random().nextInt(19) + 1;
      print(rnd);
      return DiceModel(rnd);
    });
  }
}