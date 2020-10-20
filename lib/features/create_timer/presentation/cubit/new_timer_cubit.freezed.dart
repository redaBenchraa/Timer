// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'new_timer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewTimerStateTearOff {
  const _$NewTimerStateTearOff();

// ignore: unused_element
  _NewTimerState call({Timer timer, bool active, bool done}) {
    return _NewTimerState(
      timer: timer,
      active: active,
      done: done,
    );
  }
}

// ignore: unused_element
const $NewTimerState = _$NewTimerStateTearOff();

mixin _$NewTimerState {
  Timer get timer;
  bool get active;
  bool get done;

  $NewTimerStateCopyWith<NewTimerState> get copyWith;
}

abstract class $NewTimerStateCopyWith<$Res> {
  factory $NewTimerStateCopyWith(
          NewTimerState value, $Res Function(NewTimerState) then) =
      _$NewTimerStateCopyWithImpl<$Res>;
  $Res call({Timer timer, bool active, bool done});

  $TimerCopyWith<$Res> get timer;
}

class _$NewTimerStateCopyWithImpl<$Res>
    implements $NewTimerStateCopyWith<$Res> {
  _$NewTimerStateCopyWithImpl(this._value, this._then);

  final NewTimerState _value;
  // ignore: unused_field
  final $Res Function(NewTimerState) _then;

  @override
  $Res call({
    Object timer = freezed,
    Object active = freezed,
    Object done = freezed,
  }) {
    return _then(_value.copyWith(
      timer: timer == freezed ? _value.timer : timer as Timer,
      active: active == freezed ? _value.active : active as bool,
      done: done == freezed ? _value.done : done as bool,
    ));
  }

  @override
  $TimerCopyWith<$Res> get timer {
    if (_value.timer == null) {
      return null;
    }
    return $TimerCopyWith<$Res>(_value.timer, (value) {
      return _then(_value.copyWith(timer: value));
    });
  }
}

abstract class _$NewTimerStateCopyWith<$Res>
    implements $NewTimerStateCopyWith<$Res> {
  factory _$NewTimerStateCopyWith(
          _NewTimerState value, $Res Function(_NewTimerState) then) =
      __$NewTimerStateCopyWithImpl<$Res>;
  @override
  $Res call({Timer timer, bool active, bool done});

  @override
  $TimerCopyWith<$Res> get timer;
}

class __$NewTimerStateCopyWithImpl<$Res>
    extends _$NewTimerStateCopyWithImpl<$Res>
    implements _$NewTimerStateCopyWith<$Res> {
  __$NewTimerStateCopyWithImpl(
      _NewTimerState _value, $Res Function(_NewTimerState) _then)
      : super(_value, (v) => _then(v as _NewTimerState));

  @override
  _NewTimerState get _value => super._value as _NewTimerState;

  @override
  $Res call({
    Object timer = freezed,
    Object active = freezed,
    Object done = freezed,
  }) {
    return _then(_NewTimerState(
      timer: timer == freezed ? _value.timer : timer as Timer,
      active: active == freezed ? _value.active : active as bool,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

class _$_NewTimerState implements _NewTimerState {
  const _$_NewTimerState({this.timer, this.active, this.done});

  @override
  final Timer timer;
  @override
  final bool active;
  @override
  final bool done;

  @override
  String toString() {
    return 'NewTimerState(timer: $timer, active: $active, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewTimerState &&
            (identical(other.timer, timer) ||
                const DeepCollectionEquality().equals(other.timer, timer)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timer) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$NewTimerStateCopyWith<_NewTimerState> get copyWith =>
      __$NewTimerStateCopyWithImpl<_NewTimerState>(this, _$identity);
}

abstract class _NewTimerState implements NewTimerState {
  const factory _NewTimerState({Timer timer, bool active, bool done}) =
      _$_NewTimerState;

  @override
  Timer get timer;
  @override
  bool get active;
  @override
  bool get done;
  @override
  _$NewTimerStateCopyWith<_NewTimerState> get copyWith;
}
