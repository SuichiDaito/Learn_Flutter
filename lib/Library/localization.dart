import 'package:flutter/widgets.dart';
import 'package:test1/l10n/app_localizations.dart';

class LocalizationManager {
  static final LocalizationManager instance = LocalizationManager._();
  LocalizationManager._();

  late AppLocalizations _localizations;
  AppLocalizations get appLocalizations => _localizations;

  void setLocalization(BuildContext context) {
    _localizations = AppLocalizations.of(context);
  }
}
