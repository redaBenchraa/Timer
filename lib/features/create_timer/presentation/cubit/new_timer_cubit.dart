import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timer/core/domain/entities/repositories/i_timer_repository.dart';
import 'package:timer/core/domain/entities/timer.dart';

part 'new_timer_cubit.freezed.dart';

part 'new_timer_state.dart';

@injectable
class NewTimerCubit extends Cubit<NewTimerState> {
  final ITimerRepository timerRepository;
  NewTimerCubit(this.timerRepository) : super(NewTimerState.initial());
  bool loaded = false;

  Future<void> load(int id) async {
    if (!loaded) {
      loaded = true;
      (await timerRepository.getTimer(id)).fold(
        (l) => null,
        (r) => emit(NewTimerState(timer: r, active: true, done: false)),
      );
    }
  }

  Future<void> addTimer() async {
    if (state.timer.id != null) {
      (await timerRepository.editTimer(state.timer)).fold(
        (l) => null,
        (r) => emit(state.copyWith(done: true)),
      );
    } else {
      (await timerRepository.createTimer(state.timer)).fold(
        (l) => null,
        (r) => emit(state.copyWith(done: true)),
      );
    }
  }

  bool validate(Timer timer) {
    return !(timer.name.isEmpty ||
        timer.numberOfSets == 0 ||
        timer.numberOfReps == 0 ||
        timer.duration == 0 ||
        timer.breakBetweenReps == 0 ||
        timer.breakBetweenSets == 0);
  }

  void setId(int id) {
    final timer = state.timer.copyWith(id: id);
    final active = validate(timer);
    emit(NewTimerState(timer: timer, active: active, done: false));
  }

  void setName(String name) {
    final timer = state.timer.copyWith(name: name);
    final active = validate(timer);
    emit(NewTimerState(timer: timer, active: active, done: false));
  }

  void setNbSets(int nbSets) {
    final timer = state.timer.copyWith(numberOfSets: nbSets);
    final active = validate(timer);
    emit(NewTimerState(timer: timer, active: active, done: false));
  }

  void setNbReps(int nbReps) {
    final timer = state.timer.copyWith(numberOfReps: nbReps);
    final active = validate(timer);
    emit(NewTimerState(timer: timer, active: active, done: false));
  }

  void setBreakReps(int breaksReps) {
    final timer = state.timer.copyWith(breakBetweenReps: breaksReps);
    final active = validate(timer);
    emit(NewTimerState(timer: timer, active: active, done: false));
  }

  void setBreakSets(int breaksSets) {
    final timer = state.timer.copyWith(breakBetweenSets: breaksSets);
    final active = validate(timer);
    emit(NewTimerState(timer: timer, active: active, done: false));
  }

  void setDuration(int duration) {
    final timer = state.timer.copyWith(duration: duration);
    final active = validate(timer);
    emit(NewTimerState(timer: timer, active: active, done: false));
  }
}
