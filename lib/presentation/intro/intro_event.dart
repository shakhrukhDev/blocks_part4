part of 'intro_bloc.dart';

@immutable
abstract class IntroEvent {}

class IntroNextPressed extends IntroEvent {}

class IntroPrevPressed extends IntroEvent {}

class IntroSkipPressed extends IntroEvent {}

class IntroPageScrolled extends IntroEvent {}

class IntroGetStartPressed extends IntroEvent {}
