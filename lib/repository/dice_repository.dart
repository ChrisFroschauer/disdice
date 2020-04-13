
import 'package:dis_dice/client/random_client.dart';
import 'package:dis_dice/model/dice_model.dart';

class DiceRepository {
  RandomClient randomClient = RandomClient();

  Future<DiceModel> fetch() async {
    final result = await randomClient.getRandomNumber();
    return result;
  }

  Stream<DiceModel> throws() {
    return randomClient.getThrowsStream();
  }
}