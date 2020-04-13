
import 'package:equatable/equatable.dart';

class DiceModel extends Equatable {
  num number;

  DiceModel(this.number);

  @override
  // TODO: implement props
  List<Object> get props => [number];
}