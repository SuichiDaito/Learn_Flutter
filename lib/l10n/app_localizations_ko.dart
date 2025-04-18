// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get title_all => '모두';

  @override
  String get title_searching => '수색';

  @override
  String get title_active => '활동적인';

  @override
  String get title_complete => '완전한';

  @override
  String get title_cancelled => '취소';

  @override
  String get state_korean_searching => '이사';

  @override
  String get state_korean_active => '이사';

  @override
  String get state_korean_completed => '퀵';

  @override
  String get state_korean_cancelled => '배차중';

  @override
  String get date_order => '날짜 순서';

  @override
  String get vehicle => '차량';

  @override
  String get type_vehicle => '1 톤 트럭';

  @override
  String get appointment_time_start => '도로 A, 거리 B, 주 C, 도시 D';

  @override
  String get appointment_time_end => '도로 A, 거리 B, 주 C, 도시 D';

  @override
  String get button_state_searching => '팁 드라이버';

  @override
  String get button_state_active => '강 정보';

  @override
  String get button_state_complete_reorder => '재정렬';

  @override
  String get button_state_complete_receipt => '영수증';
}
