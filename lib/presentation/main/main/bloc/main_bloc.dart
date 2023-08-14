
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<BottomMenuEvent>(_onChanged);
  }

  void _onChanged(BottomMenuEvent event, Emitter<MainState> emit){
    emit(state.copyWith(bottomMenu: event.menu));
  }
}

enum BottomMenu { home, wishlist, basket,search,setting }