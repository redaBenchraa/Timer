part of 'new_timer_cubit.dart';

@freezed
abstract class NewTimerState with _$NewTimerState {
  const factory NewTimerState({Timer timer, bool active, bool done}) =
      _NewTimerState;
  factory NewTimerState.initial() => NewTimerState(
        timer: Timer.initial(),
        active: false,
        done: false,
      );
}
