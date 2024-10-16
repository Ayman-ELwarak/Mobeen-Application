import 'package:mobile_app/models/CardsTypeModel.dart';

bool CheckResult(
    {required List<Cardstypemodel> myList,
    required List<Cardstypemodel> cards,
    required int index,
    required int i}) {
  if (myList[i].name == cards[index].name) {
    return true;
  } else {
    return false;
  }
}
