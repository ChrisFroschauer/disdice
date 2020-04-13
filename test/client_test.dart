import 'package:dis_dice/client/random_client.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('Get Random Number Test', () async {
    var randomOrgClient = RandomClient();
    await randomOrgClient.getRandomNumber().then((value) => print("Received $value"));
  });
  
}