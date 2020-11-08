import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timer/core/database.dart';

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
  factory Timer.mapFrom(TimerEntry entry) => Timer(
        id: entry.id,
        name: entry.name,
        numberOfReps: entry.numberOfReps,
        numberOfSets: entry.numberOfSets,
        breakBetweenReps: entry.breakBetweenReps,
        breakBetweenSets: entry.breakBetweenSets,
        duration: entry.duration,
      );
  static TimerEntry mapToEntry(Timer entry) => TimerEntry(
        id: entry.id,
        name: entry.name,
        numberOfReps: entry.numberOfReps,
        numberOfSets: entry.numberOfSets,
        breakBetweenReps: entry.breakBetweenReps,
        breakBetweenSets: entry.breakBetweenSets,
        duration: entry.duration,
      );
}
