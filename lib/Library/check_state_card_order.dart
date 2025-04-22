import 'package:test1/component/card.dart';
import 'package:test1/component/card_order_cancelled.dart';
import 'package:test1/l10n/app_localizations.dart';

class CheckStateCardOrder {
  static Object checkStateCardOrder(
    String state,
    String id,
    String stateKorean,
  ) {
    if (state == "Cancelled") {
      return CardOrderCancelled(id: id, state: state, stateKorean: stateKorean);
    } else {
      return CardOrder(id: id, state: state);
    }
  }
}
