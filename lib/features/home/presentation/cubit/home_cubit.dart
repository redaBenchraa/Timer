import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:timer/features/home/data/models/entry.dart';
import 'package:meta/meta.dart';

import '../../../../colors.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@Injectable()
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoading());

  Future<void> load() async {
    final entries =
        await Future.delayed(const Duration(seconds: 3)).then((_) => const [
              Entry(
                id: "1",
                color: AppTheme.yellow,
                title: "Pandora",
                subTitle: "25 minutes",
              ),
              Entry(
                id: "2",
                color: AppTheme.blue,
                title: "Pandora",
                subTitle: "12 minutes",
              ),
              Entry(
                id: "3",
                color: AppTheme.red,
                title: "Pandora",
                subTitle: "5 minutes",
              ),
              Entry(
                id: "4",
                color: AppTheme.yellow,
                title: "Pandora",
                subTitle: "25 minutes",
              ),
              Entry(
                id: "5",
                color: AppTheme.blue,
                title: "Pandora",
                subTitle: "12 minutes",
              ),
              Entry(
                id: "6",
                color: AppTheme.red,
                title: "Pandora",
                subTitle: "5 minutes",
              ),
              Entry(
                id: "7",
                color: AppTheme.yellow,
                title: "Pandora",
                subTitle: "25 minutes",
              ),
              Entry(
                id: "8",
                color: AppTheme.yellow,
                title: "Pandora",
                subTitle: "25 minutes",
              ),
              Entry(
                id: "9",
                color: AppTheme.blue,
                title: "Pandora",
                subTitle: "12 minutes",
              ),
              Entry(
                id: "10",
                color: AppTheme.red,
                title: "Pandora",
                subTitle: "5 minutes",
              ),
              Entry(
                id: "11",
                color: AppTheme.yellow,
                title: "Pandora",
                subTitle: "25 minutes",
              ),
            ]);
    emit(HomeLoaded(entries: entries));
  }
}
