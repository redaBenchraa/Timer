import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:timer/core/domain/entities/error/exceptions.dart';
import 'package:dartz/dartz.dart';

import 'package:timer/core/domain/entities/repositories/i_timer_repository.dart';
import 'package:timer/core/domain/entities/timer.dart';
import 'package:timer/features/home/data/models/entry.dart';

import '../../database.dart';

@LazySingleton(as: ITimerRepository)
class TimerRepository implements ITimerRepository {
  final Database db;

  TimerRepository() : db = Database();

  @override
  Future<Either<Exception, Timer>> createTimer(Timer timer) async {
    try {
      final id = await db.createEntry(Timer.mapToEntry(timer));
      return Future.value(right(timer.copyWith(id: id)));
    } on Exception catch (_) {
      return Future.value(
          left(const DatabaseException("Failed to create timer")));
    }
  }

  @override
  Future<Either<Exception, Unit>> deleteTimer(int id) async {
    try {
      final timer = await db.get(id);
      await db.deleteEntry(timer);
      return Future.value(right(unit));
    } on Exception catch (_) {
      return Future.value(
          left(const DatabaseException("Failed to delete timer")));
    }
  }

  @override
  Future<Either<Exception, Timer>> editTimer(Timer timer) async {
    try {
      await db.updateEntry(Timer.mapToEntry(timer));
      return Future.value(right(timer));
    } on Exception catch (_) {
      return Future.value(
          left(const DatabaseException("Failed to update timer")));
    }
  }

  @override
  Future<Either<Exception, Timer>> getTimer(int id) async {
    try {
      final timer = await db.get(id);
      return Future.value(right(Timer.mapFrom(timer)));
    } on Exception catch (_) {
      return Future.value(left(const DatabaseException("Failed to get timer")));
    }
  }

  @override
  Future<Either<Exception, List<Entry>>> getAllTimers() async {
    try {
      final timers = await db.getAll();
      return right(timers
          .map((e) => Entry(
                id: e.id,
                title: e.name,
                subTitle: getSubtitle(e),
                color: Colors.accents[e.id % Colors.accents.length],
              ))
          .toList());
    } on Exception catch (_) {
      return Future.value(
          left(const DatabaseException("Failed to get timers")));
    }
  }

  String getSubtitle(TimerEntry timer) {
    final duration = timer.numberOfSets *
        (timer.numberOfReps * (timer.duration + timer.breakBetweenReps) +
            timer.breakBetweenSets);
    return '${duration ~/ 60}  minutes';
  }
}
