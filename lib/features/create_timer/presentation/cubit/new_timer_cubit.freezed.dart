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
  _NewTimerState call({Timer timer}) {
    return _NewTimerState(
      timer: timer,
    );
  }
}

// ignore: unused_element
const $NewTimerState = _$NewTimerStateTearOff();

mixin _$NewTimerState {
  Timer get timer;

  $NewTimerStateCopyWith<NewTimerState> get copyWith;
}

abstract class $NewTimerStateCopyWith<$Res> {
  factory $NewTimerStateCopyWith(
          NewTimerState value, $Res Function(NewTimerState) then) =
      _$NewTimerStateCopyWithImpl<$Res>;
  $Res call({Timer timer});

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
  }) {
    return _then(_value.copyWith(
      timer: timer == freezed ? _value.timer : timer as Timer,
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
  $Res call({Timer timer});

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
  }) {
    return _then(_NewTimerState(
      timer: timer == freezed ? _value.timer : timer as Timer,
    ));
  }
}

class _$_NewTimerState implements _NewTimerState {
  const _$_NewTimerState({this.timer});

  @override
  final Timer timer;

  @override
  String toString() {
    return 'NewTimerState(timer: $timer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewTimerState &&
            (identical(other.timer, timer) ||
                const DeepCollectionEquality().equals(other.timer, timer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timer);

  @override
  _$NewTimerStateCopyWith<_NewTimerState> get copyWith =>
      __$NewTimerStateCopyWithImpl<_NewTimerState>(this, _$identity);
}

abstract class _NewTimerState implements NewTimerState {
  const factory _NewTimerState({Timer timer}) = _$_NewTimerState;

  @override
  Timer get timer;
  @override
  _$NewTimerStateCopyWith<_NewTimerState> get copyWith;
}
