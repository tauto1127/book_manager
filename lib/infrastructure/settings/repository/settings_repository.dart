import 'package:book_manager/domain/settings/settings_repository_base.dart';
import 'package:book_manager/util/app_settings.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository extends SettingsRepositoryBase {
  late SharedPreferences _sharedPreferences;

  SettingsRepository(SharedPreferences sharedPreferences) {
    _sharedPreferences = sharedPreferences;
  }

  @override
  Future<AppSettings?> getAppSettings() async {
    String? anonKey = _sharedPreferences.getString('anonKey');
    String? url = _sharedPreferences.getString('url');
    if (anonKey == null || url == null) {
      return null;
    }
    return AppSettings(url: url, anonKey: anonKey);
  }

  @override
  Future<void> updateAppSettings(AppSettings appSettings) async {
    await _sharedPreferences.setString('anonKey', appSettings.anonKey);
    await _sharedPreferences.setString('url', appSettings.url);
  }
}

final sharedPreferencesProvider = Provider((ref) async => await SharedPreferences.getInstance());

final settingsRepositoryProvider = Provider((ref) async => SettingsRepository(await ref.read(sharedPreferencesProvider)));
