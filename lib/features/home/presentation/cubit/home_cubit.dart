import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:timer/core/domain/entities/repositories/i_timer_repository.dart';
import 'package:timer/features/home/data/models/entry.dart';
import 'package:meta/meta.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@Injectable()
class HomeCubit extends Cubit<HomeState> {
  final ITimerRepository timerRepository;

  HomeCubit(this.timerRepository) : super(HomeLoading());

  Future<void> load() async {
    (await timerRepository.getAllTimers()).fold(
      (l) => emit(HomeFailure(error: l.message)),
      (r) => emit(HomeLoaded(entries: r)),
    );
  }

  Future<void> delete(int id) async {
    (await timerRepository.deleteTimer(id)).fold(
      (l) => emit(HomeFailure(error: l.message)),
      (r) => load(),
    );
  }
}
