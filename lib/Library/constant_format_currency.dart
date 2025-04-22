import 'package:intl/intl.dart';

class ConstantFormat {
  static String formatCurrency(num amout) {
    final formatter = NumberFormat.currency(locale: 'ko_KR', symbol: '₩');
    return formatter.format(amout);
  }
}
