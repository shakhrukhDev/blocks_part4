part of 'intro_bloc.dart';

@immutable
abstract class IntroState {}

class IntroInitial extends IntroState {}

class IntroToLoginState extends IntroState {}

class IntroPageChangedState extends IntroState {
  final int page;

  IntroPageChangedState({required this.page});
}
