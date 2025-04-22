import 'package:test1/component/card.dart';
import 'package:test1/component/card_order_cancelled.dart';
import 'package:test1/l10n/app_localizations.dart';

class CheckStateCardOrder {
  static Object checkStateCardOrder(
    String state,
    String id,
    String departure,
    String destination,
  ) {
    if (state == "Cancelled") {
      return CardOrderCancelled(id: id, state: state);
    } else {
      return CardOrder(
        id: id,
        state: state,
        departure: departure,
        destination: destination,
      );
    }
  }
}
