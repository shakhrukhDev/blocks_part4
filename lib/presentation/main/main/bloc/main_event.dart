part of 'main_bloc.dart';

@immutable
abstract class MainEvent {}

class BottomMenuEvent extends MainEvent{

  final BottomMenu menu;

  BottomMenuEvent({required this.menu});
  @override
  List<Object?> get props => [menu];
}
