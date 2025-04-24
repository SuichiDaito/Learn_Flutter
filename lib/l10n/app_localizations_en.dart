// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title_all => 'All';

  @override
  String get title_searching => 'Searching';

  @override
  String get title_active => 'Active';

  @override
  String get title_completed => 'Completed';

  @override
  String get title_cancelled => 'Cancelled';

  @override
  String get state_korean_searching => '이사';

  @override
  String get state_korean_active => '이사';

  @override
  String get state_korean_completed => '퀵';

  @override
  String get state_korean_cancelled => '배차중';

  @override
  String get date_order => 'Date order';

  @override
  String get vehicle => 'Vehicle';

  @override
  String get type_vehicle => '1 ton truck';

  @override
  String get appointment_time_start => 'Road A, Street B, Province C, City D';

  @override
  String get appointment_time_end => 'Road A, Street B, Province C, City D';

  @override
  String get button_state_searching => 'Tip driver';

  @override
  String get button_state_active => 'Driver info';

  @override
  String get button_state_complete_reorder => 'Reorder';

  @override
  String get button_state_complete_receipt => 'Receipt';
}
