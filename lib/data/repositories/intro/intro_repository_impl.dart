part of 'intro_repository.dart';

class IntroRepositoryImpl extends IntroRepository {
  final LocalSource _localSource;

  static IntroRepositoryImpl? _instance;

  static IntroRepositoryImpl getInstance() {
    _instance ??= IntroRepositoryImpl(localSource: LocalSource.getInstance());
    return _instance!;
  }

  IntroRepositoryImpl({required LocalSource localSource}) : _localSource = localSource;

  @override
  Future<void> setIsShowIntro(bool isShown) async {
    await _localSource.setIsShowIntro(isShown);
  }
}
