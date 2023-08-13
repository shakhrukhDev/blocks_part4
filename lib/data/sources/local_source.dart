import 'package:shared_preferences/shared_preferences.dart';

class LocalSource {
  final SharedPreferences _pref;

  LocalSource(this._pref);

  static LocalSource? _instance;

  static late final SharedPreferences _prefInstance;

  static Future<void> init() async {
    _prefInstance = await SharedPreferences.getInstance();
  }

  static LocalSource getInstance() {
    _instance ??= LocalSource(_prefInstance);
    return _instance!;
  }

  Future<void> setIsShowIntro(bool isShowIntro) async {
    await _pref.setBool("is_shown_intro", isShowIntro);
  }

  bool get isShownIntro => _pref.getBool("is_shown_intro") ?? false;

  Future<void> setHasProfile(bool hasProfile) async {
    await _pref.setBool("has_profile", hasProfile);
  }

  bool get hasProfile => _pref.getBool("has_profile") ?? false;
}
