part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeLoading extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeLoaded extends HomeState {
  final List<Entry> entries;

  const HomeLoaded(this.entries);

  @override
  List<Object> get props => [];
}

class HomeFailure extends HomeState {
  @override
  List<Object> get props => [];
}
