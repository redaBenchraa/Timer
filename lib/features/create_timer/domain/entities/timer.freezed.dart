// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TimerTearOff {
  const _$TimerTearOff();

// ignore: unused_element
  _Timer call(
      {String name,
      int numberOfReps,
      int numberOfSets,
      int breakBetweenReps,
      int breakBetweenSets,
      int duration}) {
    return _Timer(
      name: name,
      numberOfReps: numberOfReps,
      numberOfSets: numberOfSets,
      breakBetweenReps: breakBetweenReps,
      breakBetweenSets: breakBetweenSets,
      duration: duration,
    );
  }
}

// ignore: unused_element
const $Timer = _$TimerTearOff();

mixin _$Timer {
  String get name;
  int get numberOfReps;
  int get numberOfSets;
  int get breakBetweenReps;
  int get breakBetweenSets;
  int get duration;

  $TimerCopyWith<Timer> get copyWith;
}

abstract class $TimerCopyWith<$Res> {
  factory $TimerCopyWith(Timer value, $Res Function(Timer) then) =
      _$TimerCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int numberOfReps,
      int numberOfSets,
      int breakBetweenReps,
      int breakBetweenSets,
      int duration});
}

class _$TimerCopyWithImpl<$Res> implements $TimerCopyWith<$Res> {
  _$TimerCopyWithImpl(this._value, this._then);

  final Timer _value;
  // ignore: unused_field
  final $Res Function(Timer) _then;

  @override
  $Res call({
    Object name = freezed,
    Object numberOfReps = freezed,
    Object numberOfSets = freezed,
    Object breakBetweenReps = freezed,
    Object breakBetweenSets = freezed,
    Object duration = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      numberOfReps:
          numberOfReps == freezed ? _value.numberOfReps : numberOfReps as int,
      numberOfSets:
          numberOfSets == freezed ? _value.numberOfSets : numberOfSets as int,
      breakBetweenReps: breakBetweenReps == freezed
          ? _value.breakBetweenReps
          : breakBetweenReps as int,
      breakBetweenSets: breakBetweenSets == freezed
          ? _value.breakBetweenSets
          : breakBetweenSets as int,
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

abstract class _$TimerCopyWith<$Res> implements $TimerCopyWith<$Res> {
  factory _$TimerCopyWith(_Timer value, $Res Function(_Timer) then) =
      __$TimerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int numberOfReps,
      int numberOfSets,
      int breakBetweenReps,
      int breakBetweenSets,
      int duration});
}

class __$TimerCopyWithImpl<$Res> extends _$TimerCopyWithImpl<$Res>
    implements _$TimerCopyWith<$Res> {
  __$TimerCopyWithImpl(_Timer _value, $Res Function(_Timer) _then)
      : super(_value, (v) => _then(v as _Timer));

  @override
  _Timer get _value => super._value as _Timer;

  @override
  $Res call({
    Object name = freezed,
    Object numberOfReps = freezed,
    Object numberOfSets = freezed,
    Object breakBetweenReps = freezed,
    Object breakBetweenSets = freezed,
    Object duration = freezed,
  }) {
    return _then(_Timer(
      name: name == freezed ? _value.name : name as String,
      numberOfReps:
          numberOfReps == freezed ? _value.numberOfReps : numberOfReps as int,
      numberOfSets:
          numberOfSets == freezed ? _value.numberOfSets : numberOfSets as int,
      breakBetweenReps: breakBetweenReps == freezed
          ? _value.breakBetweenReps
          : breakBetweenReps as int,
      breakBetweenSets: breakBetweenSets == freezed
          ? _value.breakBetweenSets
          : breakBetweenSets as int,
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

class _$_Timer implements _Timer {
  _$_Timer(
      {this.name,
      this.numberOfReps,
      this.numberOfSets,
      this.breakBetweenReps,
      this.breakBetweenSets,
      this.duration});

  @override
  final String name;
  @override
  final int numberOfReps;
  @override
  final int numberOfSets;
  @override
  final int breakBetweenReps;
  @override
  final int breakBetweenSets;
  @override
  final int duration;

  @override
  String toString() {
    return 'Timer(name: $name, numberOfReps: $numberOfReps, numberOfSets: $numberOfSets, breakBetweenReps: $breakBetweenReps, breakBetweenSets: $breakBetweenSets, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Timer &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.numberOfReps, numberOfReps) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfReps, numberOfReps)) &&
            (identical(other.numberOfSets, numberOfSets) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfSets, numberOfSets)) &&
            (identical(other.breakBetweenReps, breakBetweenReps) ||
                const DeepCollectionEquality()
                    .equals(other.breakBetweenReps, breakBetweenReps)) &&
            (identical(other.breakBetweenSets, breakBetweenSets) ||
                const DeepCollectionEquality()
                    .equals(other.breakBetweenSets, breakBetweenSets)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(numberOfReps) ^
      const DeepCollectionEquality().hash(numberOfSets) ^
      const DeepCollectionEquality().hash(breakBetweenReps) ^
      const DeepCollectionEquality().hash(breakBetweenSets) ^
      const DeepCollectionEquality().hash(duration);

  @override
  _$TimerCopyWith<_Timer> get copyWith =>
      __$TimerCopyWithImpl<_Timer>(this, _$identity);
}

abstract class _Timer implements Timer {
  factory _Timer(
      {String name,
      int numberOfReps,
      int numberOfSets,
      int breakBetweenReps,
      int breakBetweenSets,
      int duration}) = _$_Timer;

  @override
  String get name;
  @override
  int get numberOfReps;
  @override
  int get numberOfSets;
  @override
  int get breakBetweenReps;
  @override
  int get breakBetweenSets;
  @override
  int get duration;
  @override
  _$TimerCopyWith<_Timer> get copyWith;
}
