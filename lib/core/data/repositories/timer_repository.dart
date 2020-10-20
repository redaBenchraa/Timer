import 'dart:math';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:timer/core/domain/entities/error/exceptions.dart';
import 'package:dartz/dartz.dart';

import 'package:timer/core/domain/entities/repositories/i_timer_repository.dart';
import 'package:timer/core/domain/entities/timer.dart';
import 'package:timer/features/home/data/models/entry.dart';

@LazySingleton(as: ITimerRepository)
class TimerRepository implements ITimerRepository {
  final timers = <Timer>[
    Timer(
      id: 1,
      name: "First",
      breakBetweenReps: 15,
      breakBetweenSets: 15,
      duration: 15,
      numberOfReps: 15,
      numberOfSets: 15,
    ),
    Timer(
      id: 2,
      name: "Second",
      breakBetweenReps: 20,
      breakBetweenSets: 20,
      duration: 20,
      numberOfReps: 20,
      numberOfSets: 20,
    ),
    Timer(
      id: 3,
      name: "Third",
      breakBetweenReps: 25,
      breakBetweenSets: 25,
      duration: 25,
      numberOfReps: 25,
      numberOfSets: 25,
    ),
  ];

  @override
  Future<Either<Exception, Timer>> createTimer(Timer timer) {
    timers.add(timer.copyWith(id: timers.last.id + 1));
    return Future.value(right(timers.last));
  }

  @override
  Future<Either<Exception, Unit>> deleteTimer(int id) {
    timers.removeWhere((element) => element.id == id);
    return Future.value(right(unit));
  }

  @override
  Future<Either<Exception, Timer>> editTimer(Timer timer) {
    final index = timers.indexWhere((x) => x.id == timer.id);
    timers.removeAt(index);
    timers.insert(index, timer);
    return Future.value(right(timers.elementAt(index)));
  }

  @override
  Future<Either<Exception, List<Entry>>> getAllTimers() {
    return Future.value(right(timers
        .map((e) => Entry(
              id: e.id,
              title: e.name,
              subTitle: getSubtitle(e),
              color: Colors.accents[e.id % Colors.accents.length],
            ))
        .toList()));
  }

  String getSubtitle(Timer timer) {
    final duration = timer.numberOfSets *
        (timer.numberOfReps * (timer.duration + timer.breakBetweenReps) +
            timer.breakBetweenSets);
    return '${duration ~/ 60}  minutes';
  }

  @override
  Future<Either<Exception, Timer>> getTimer(int id) {
    if (timers.any((element) => element.id == id)) {
      final timer = timers.where((element) => element.id == id).first;
      return Future.value(right(timer));
    } else {
      return Future.value(left(const DatabaseException("No element found")));
    }
  }
}
