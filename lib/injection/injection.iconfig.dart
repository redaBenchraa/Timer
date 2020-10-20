// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:timer/core/data/repositories/timer_repository.dart';
import 'package:timer/core/domain/entities/repositories/i_timer_repository.dart';
import 'package:timer/features/create_timer/presentation/cubit/new_timer_cubit.dart';
import 'package:timer/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<ITimerRepository>(() => TimerRepository());
  g.registerFactory<NewTimerCubit>(() => NewTimerCubit(g<ITimerRepository>()));
  g.registerFactory<HomeCubit>(() => HomeCubit(g<ITimerRepository>()));
}
