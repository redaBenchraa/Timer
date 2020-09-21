import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:timer/features/create_timer/domain/entities/timer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_timer_cubit.freezed.dart';

part 'new_timer_state.dart';

@injectable
class NewTimerCubit extends Cubit<NewTimerState> {
  NewTimerCubit() : super(NewTimerState.initial());

  void addTimer() {
    print(state.timer.toString());
  }

  void setName(String name) {
    emit(NewTimerState(timer: state.timer.copyWith(name: name)));
  }

  void setNbSets(int nbSets) {
    emit(NewTimerState(timer: state.timer.copyWith(numberOfSets: nbSets)));
  }

  void setNbReps(int nbReps) {
    emit(NewTimerState(timer: state.timer.copyWith(numberOfReps: nbReps)));
  }

  void setBreakReps(int breaksReps) {
    emit(NewTimerState(
        timer: state.timer.copyWith(breakBetweenReps: breaksReps)));
  }

  void setBreakSets(int breaksSets) {
    emit(NewTimerState(
        timer: state.timer.copyWith(breakBetweenSets: breaksSets)));
  }

  void setDuration(int duration) {
    emit(NewTimerState(timer: state.timer.copyWith(duration: duration)));
  }
}
