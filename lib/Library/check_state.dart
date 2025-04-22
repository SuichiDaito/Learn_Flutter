import 'package:test1/library/constant.dart';

class CheckState {
  final String state = "";

  Object checkColorBackground(String state) {
    if (state == "Searching") {
      return ConstantColor.colorNeutral4;
    } else if (state == "Active") {
      return ConstantColor.colorBackgroundActive;
    } else if (state == "Completed") {
      return ConstantColor.colorBackgroundComplete;
    } else {
      return ConstantColor.colorNeutral4;
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
    } else if (state == "Cancelled") {
      return ConstantColor.colorBackgroundStateKorean;
    } else {
      return ConstantColor.colorTextKoreanSearching;
    }
  }

  String checkTextStateKorean(String state) {
    if (state == "Cancelled") {
      return "배차중";
    } else if (state == "Completed") {
      return "퀵";
    } else if (state == "Active") {
      return "이사";
    } else {
      return "이사";
    }
  }
}
