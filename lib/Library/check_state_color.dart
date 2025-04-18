import 'package:test1/library/constant.dart';

class CheckColorState {
  final String state = "";

  Object checkColorBackground(String state) {
    if (state == "Searching") {
      return ConstantColor.colorBackgroundSearching;
    } else if (state == "Active") {
      return ConstantColor.colorBackgroundActive;
    } else if (state == "Completed") {
      return ConstantColor.colorBackgroundComplete;
    } else {
      return ConstantColor.colorBackgroundSearching;
    }
  }

  Object checkColorText(String state) {
    if (state == "Searching") {
      return ConstantColor.colorTextSearching;
    } else if (state == "Active") {
      return ConstantColor.colorTextActive;
    } else if (state == "Completed") {
      return ConstantColor.colorTextComplete;
    } else {
      return ConstantColor.colorTextSearching;
    }
  }

  Object checkColorTextStateKorean(String state) {
    if (state == "Searching") {
      return ConstantColor.colorTextKoreanSearching;
    } else if (state == "Active") {
      return ConstantColor.colorTextKoreanActive;
    } else if (state == "Completed") {
      return ConstantColor.colorTextKoreanComplete;
    } else {
      return ConstantColor.colorTextKoreanSearching;
    }
  }
}
