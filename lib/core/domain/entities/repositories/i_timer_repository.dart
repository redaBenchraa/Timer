import 'package:dartz/dartz.dart';
import 'package:timer/core/domain/entities/error/exceptions.dart';
import 'package:timer/features/home/data/models/entry.dart';

import '../timer.dart';

abstract class ITimerRepository {
  Future<Either<Exception, Timer>> getTimer(int id);
  Future<Either<Exception, List<Entry>>> getAllTimers();
  Future<Either<Exception, Timer>> createTimer(Timer timer);
  Future<Either<Exception, Timer>> editTimer(Timer timer);
  Future<Either<Exception, Unit>> deleteTimer(int id);
}
