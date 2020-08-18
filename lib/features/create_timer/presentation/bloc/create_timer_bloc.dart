import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'create_timer_event.dart';
part 'create_timer_state.dart';
class CreateTimerBloc extends Bloc<CreateTimerEvent, CreateTimerState> {
  CreateTimerBloc() : super(CreateTimerInitial());
  @override
  Stream<CreateTimerState> mapEventToState(
    CreateTimerEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
