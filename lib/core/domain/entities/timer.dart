import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer.freezed.dart';

@freezed
abstract class Timer with _$Timer {
  factory Timer({
    int id,
    String name,
    int numberOfReps,
    int numberOfSets,
    int breakBetweenReps,
    int breakBetweenSets,
    int duration,
  }) = _Timer;

  factory Timer.initial() => Timer(
        name: '',
        numberOfReps: 4,
        numberOfSets: 4,
        breakBetweenReps: 10,
        breakBetweenSets: 60,
        duration: 30,
      );
}
