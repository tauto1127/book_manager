import 'package:book_manager/util/app_settings.dart';

abstract class SettingsRepositoryBase {
  Future<AppSettings?> getAppSettings();
  Future<void> updateAppSettings(AppSettings appSettings);
}
