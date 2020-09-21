part of 'new_timer_cubit.dart';

@freezed
abstract class NewTimerState with _$NewTimerState {
  const factory NewTimerState({Timer timer}) = _NewTimerState;
  factory NewTimerState.initial() => NewTimerState(timer: Timer.initial());
}
