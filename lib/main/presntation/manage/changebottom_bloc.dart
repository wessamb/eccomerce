import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'changebottom_event.dart';
part 'changebottom_state.dart';

class ChangebottomBloc extends Bloc<ChangebottomEvent, ChangeBottomState> {
  ChangebottomBloc() : super(ChangeBottomState()) {
    on<ChangeBottomUiEvent>(_changePage);
  }
  void _changePage(ChangeBottomUiEvent event,Emitter<ChangeBottomState>emit){
    var currentindex=event.counter;
    emit(state.CopyWith(states: ChangeBottom.changebottom,counter: event.counter));
}
}
