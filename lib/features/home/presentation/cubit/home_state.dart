part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState() = _HomeState;
  factory HomeState.loading() = HomeLoading;
  factory HomeState.loaded({@required List<Entry> entries}) = HomeLoaded;
  factory HomeState.failure({@required String error}) = HomeFailure;
}
