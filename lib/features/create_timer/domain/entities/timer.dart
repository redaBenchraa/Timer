import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer.freezed.dart';

@freezed
abstract class Timer with _$Timer {
  factory Timer(
      {String name,
      int numberOfReps,
      int numberOfSets,
      int breakBetweenReps,
      int breakBetweenSets,
      int duration}) = _Timer;

  factory Timer.initial() => Timer(
        name: 'Untitled',
        numberOfReps: 4,
        numberOfSets: 4,
        breakBetweenReps: 10,
        breakBetweenSets: 60,
        duration: 30,
      );
}
