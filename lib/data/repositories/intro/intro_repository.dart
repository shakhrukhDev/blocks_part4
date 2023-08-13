import 'package:block_part4/data/sources/local_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'intro_repository_impl.dart';

@immutable
abstract class IntroRepository {
  Future<void> setIsShowIntro(bool isShown);
}
