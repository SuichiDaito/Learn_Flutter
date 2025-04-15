import 'package:test1/Library/Constant.dart';

class checkColor {
  final String state = "";

  Object checkColorBackground(String state) {
    if (state == "Searching") {
      return Constant.colorBackgroundSearching;
    } else if (state == "Active") {
      return Constant.colorBackgroundActive;
    } else if (state == "Completed") {
      return Constant.colorBackgroundComplete;
    } else {
      return Constant.colorBackgroundSearching;
    }
  }

  Object checkColorText(String state) {
    if (state == "Searching") {
      return Constant.colorTextSearching;
    } else if (state == "Active") {
      return Constant.colorTextActive;
    } else if (state == "Completed") {
      return Constant.colorTextComplete;
    } else {
      return Constant.colorTextSearching;
    }
  }

  Object checkColorTextStateKorean(String state) {
    if (state == "Searching") {
      return Constant.colorTextKoreanSearching;
    } else if (state == "Active") {
      return Constant.colorTextKoreanActive;
    } else if (state == "Completed") {
      return Constant.colorTextKoreanComplete;
    } else {
      return Constant.colorTextKoreanSearching;
    }
  }
}
