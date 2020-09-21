// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _HomeState call() {
    return const _HomeState();
  }

// ignore: unused_element
  HomeLoading loading() {
    return HomeLoading();
  }

// ignore: unused_element
  HomeLoaded loaded({@required List<Entry> entries}) {
    return HomeLoaded(
      entries: entries,
    );
  }

// ignore: unused_element
  HomeFailure failure({@required String error}) {
    return HomeFailure(
      error: error,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result loading(),
    @required Result loaded(List<Entry> entries),
    @required Result failure(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result loading(),
    Result loaded(List<Entry> entries),
    Result failure(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_HomeState value), {
    @required Result loading(HomeLoading value),
    @required Result loaded(HomeLoaded value),
    @required Result failure(HomeFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_HomeState value), {
    Result loading(HomeLoading value),
    Result loaded(HomeLoaded value),
    Result failure(HomeFailure value),
    @required Result orElse(),
  });
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

abstract class _$HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
}

class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;
}

class _$_HomeState implements _HomeState {
  const _$_HomeState();

  @override
  String toString() {
    return 'HomeState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result loading(),
    @required Result loaded(List<Entry> entries),
    @required Result failure(String error),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result loading(),
    Result loaded(List<Entry> entries),
    Result failure(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_HomeState value), {
    @required Result loading(HomeLoading value),
    @required Result loaded(HomeLoaded value),
    @required Result failure(HomeFailure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_HomeState value), {
    Result loading(HomeLoading value),
    Result loaded(HomeLoaded value),
    Result failure(HomeFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState() = _$_HomeState;
}

abstract class $HomeLoadingCopyWith<$Res> {
  factory $HomeLoadingCopyWith(
          HomeLoading value, $Res Function(HomeLoading) then) =
      _$HomeLoadingCopyWithImpl<$Res>;
}

class _$HomeLoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadingCopyWith<$Res> {
  _$HomeLoadingCopyWithImpl(
      HomeLoading _value, $Res Function(HomeLoading) _then)
      : super(_value, (v) => _then(v as HomeLoading));

  @override
  HomeLoading get _value => super._value as HomeLoading;
}

class _$HomeLoading implements HomeLoading {
  _$HomeLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result loading(),
    @required Result loaded(List<Entry> entries),
    @required Result failure(String error),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result loading(),
    Result loaded(List<Entry> entries),
    Result failure(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_HomeState value), {
    @required Result loading(HomeLoading value),
    @required Result loaded(HomeLoaded value),
    @required Result failure(HomeFailure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_HomeState value), {
    Result loading(HomeLoading value),
    Result loaded(HomeLoaded value),
    Result failure(HomeFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading implements HomeState {
  factory HomeLoading() = _$HomeLoading;
}

abstract class $HomeLoadedCopyWith<$Res> {
  factory $HomeLoadedCopyWith(
          HomeLoaded value, $Res Function(HomeLoaded) then) =
      _$HomeLoadedCopyWithImpl<$Res>;
  $Res call({List<Entry> entries});
}

class _$HomeLoadedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeLoadedCopyWith<$Res> {
  _$HomeLoadedCopyWithImpl(HomeLoaded _value, $Res Function(HomeLoaded) _then)
      : super(_value, (v) => _then(v as HomeLoaded));

  @override
  HomeLoaded get _value => super._value as HomeLoaded;

  @override
  $Res call({
    Object entries = freezed,
  }) {
    return _then(HomeLoaded(
      entries: entries == freezed ? _value.entries : entries as List<Entry>,
    ));
  }
}

class _$HomeLoaded implements HomeLoaded {
  _$HomeLoaded({@required this.entries}) : assert(entries != null);

  @override
  final List<Entry> entries;

  @override
  String toString() {
    return 'HomeState.loaded(entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeLoaded &&
            (identical(other.entries, entries) ||
                const DeepCollectionEquality().equals(other.entries, entries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entries);

  @override
  $HomeLoadedCopyWith<HomeLoaded> get copyWith =>
      _$HomeLoadedCopyWithImpl<HomeLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result loading(),
    @required Result loaded(List<Entry> entries),
    @required Result failure(String error),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(entries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result loading(),
    Result loaded(List<Entry> entries),
    Result failure(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(entries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_HomeState value), {
    @required Result loading(HomeLoading value),
    @required Result loaded(HomeLoaded value),
    @required Result failure(HomeFailure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_HomeState value), {
    Result loading(HomeLoading value),
    Result loaded(HomeLoaded value),
    Result failure(HomeFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoaded implements HomeState {
  factory HomeLoaded({@required List<Entry> entries}) = _$HomeLoaded;

  List<Entry> get entries;
  $HomeLoadedCopyWith<HomeLoaded> get copyWith;
}

abstract class $HomeFailureCopyWith<$Res> {
  factory $HomeFailureCopyWith(
          HomeFailure value, $Res Function(HomeFailure) then) =
      _$HomeFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$HomeFailureCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeFailureCopyWith<$Res> {
  _$HomeFailureCopyWithImpl(
      HomeFailure _value, $Res Function(HomeFailure) _then)
      : super(_value, (v) => _then(v as HomeFailure));

  @override
  HomeFailure get _value => super._value as HomeFailure;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(HomeFailure(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

class _$HomeFailure implements HomeFailure {
  _$HomeFailure({@required this.error}) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $HomeFailureCopyWith<HomeFailure> get copyWith =>
      _$HomeFailureCopyWithImpl<HomeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result loading(),
    @required Result loaded(List<Entry> entries),
    @required Result failure(String error),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result loading(),
    Result loaded(List<Entry> entries),
    Result failure(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_HomeState value), {
    @required Result loading(HomeLoading value),
    @required Result loaded(HomeLoaded value),
    @required Result failure(HomeFailure value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_HomeState value), {
    Result loading(HomeLoading value),
    Result loaded(HomeLoaded value),
    Result failure(HomeFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeFailure implements HomeState {
  factory HomeFailure({@required String error}) = _$HomeFailure;

  String get error;
  $HomeFailureCopyWith<HomeFailure> get copyWith;
}
