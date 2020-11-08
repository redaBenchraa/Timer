// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TimerEntry extends DataClass implements Insertable<TimerEntry> {
  final int id;
  final String name;
  final int numberOfReps;
  final int numberOfSets;
  final int breakBetweenReps;
  final int breakBetweenSets;
  final int duration;
  TimerEntry(
      {@required this.id,
      @required this.name,
      @required this.numberOfReps,
      @required this.numberOfSets,
      @required this.breakBetweenReps,
      @required this.breakBetweenSets,
      @required this.duration});
  factory TimerEntry.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return TimerEntry(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      numberOfReps: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}number_of_reps']),
      numberOfSets: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}number_of_sets']),
      breakBetweenReps: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}break_between_reps']),
      breakBetweenSets: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}break_between_sets']),
      duration:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}duration']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || numberOfReps != null) {
      map['number_of_reps'] = Variable<int>(numberOfReps);
    }
    if (!nullToAbsent || numberOfSets != null) {
      map['number_of_sets'] = Variable<int>(numberOfSets);
    }
    if (!nullToAbsent || breakBetweenReps != null) {
      map['break_between_reps'] = Variable<int>(breakBetweenReps);
    }
    if (!nullToAbsent || breakBetweenSets != null) {
      map['break_between_sets'] = Variable<int>(breakBetweenSets);
    }
    if (!nullToAbsent || duration != null) {
      map['duration'] = Variable<int>(duration);
    }
    return map;
  }

  TimersCompanion toCompanion(bool nullToAbsent) {
    return TimersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      numberOfReps: numberOfReps == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfReps),
      numberOfSets: numberOfSets == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfSets),
      breakBetweenReps: breakBetweenReps == null && nullToAbsent
          ? const Value.absent()
          : Value(breakBetweenReps),
      breakBetweenSets: breakBetweenSets == null && nullToAbsent
          ? const Value.absent()
          : Value(breakBetweenSets),
      duration: duration == null && nullToAbsent
          ? const Value.absent()
          : Value(duration),
    );
  }

  factory TimerEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TimerEntry(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      numberOfReps: serializer.fromJson<int>(json['numberOfReps']),
      numberOfSets: serializer.fromJson<int>(json['numberOfSets']),
      breakBetweenReps: serializer.fromJson<int>(json['breakBetweenReps']),
      breakBetweenSets: serializer.fromJson<int>(json['breakBetweenSets']),
      duration: serializer.fromJson<int>(json['duration']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'numberOfReps': serializer.toJson<int>(numberOfReps),
      'numberOfSets': serializer.toJson<int>(numberOfSets),
      'breakBetweenReps': serializer.toJson<int>(breakBetweenReps),
      'breakBetweenSets': serializer.toJson<int>(breakBetweenSets),
      'duration': serializer.toJson<int>(duration),
    };
  }

  TimerEntry copyWith(
          {int id,
          String name,
          int numberOfReps,
          int numberOfSets,
          int breakBetweenReps,
          int breakBetweenSets,
          int duration}) =>
      TimerEntry(
        id: id ?? this.id,
        name: name ?? this.name,
        numberOfReps: numberOfReps ?? this.numberOfReps,
        numberOfSets: numberOfSets ?? this.numberOfSets,
        breakBetweenReps: breakBetweenReps ?? this.breakBetweenReps,
        breakBetweenSets: breakBetweenSets ?? this.breakBetweenSets,
        duration: duration ?? this.duration,
      );
  @override
  String toString() {
    return (StringBuffer('TimerEntry(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('numberOfReps: $numberOfReps, ')
          ..write('numberOfSets: $numberOfSets, ')
          ..write('breakBetweenReps: $breakBetweenReps, ')
          ..write('breakBetweenSets: $breakBetweenSets, ')
          ..write('duration: $duration')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              numberOfReps.hashCode,
              $mrjc(
                  numberOfSets.hashCode,
                  $mrjc(breakBetweenReps.hashCode,
                      $mrjc(breakBetweenSets.hashCode, duration.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TimerEntry &&
          other.id == this.id &&
          other.name == this.name &&
          other.numberOfReps == this.numberOfReps &&
          other.numberOfSets == this.numberOfSets &&
          other.breakBetweenReps == this.breakBetweenReps &&
          other.breakBetweenSets == this.breakBetweenSets &&
          other.duration == this.duration);
}

class TimersCompanion extends UpdateCompanion<TimerEntry> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> numberOfReps;
  final Value<int> numberOfSets;
  final Value<int> breakBetweenReps;
  final Value<int> breakBetweenSets;
  final Value<int> duration;
  const TimersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.numberOfReps = const Value.absent(),
    this.numberOfSets = const Value.absent(),
    this.breakBetweenReps = const Value.absent(),
    this.breakBetweenSets = const Value.absent(),
    this.duration = const Value.absent(),
  });
  TimersCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.numberOfReps = const Value.absent(),
    this.numberOfSets = const Value.absent(),
    this.breakBetweenReps = const Value.absent(),
    this.breakBetweenSets = const Value.absent(),
    this.duration = const Value.absent(),
  });
  static Insertable<TimerEntry> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<int> numberOfReps,
    Expression<int> numberOfSets,
    Expression<int> breakBetweenReps,
    Expression<int> breakBetweenSets,
    Expression<int> duration,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (numberOfReps != null) 'number_of_reps': numberOfReps,
      if (numberOfSets != null) 'number_of_sets': numberOfSets,
      if (breakBetweenReps != null) 'break_between_reps': breakBetweenReps,
      if (breakBetweenSets != null) 'break_between_sets': breakBetweenSets,
      if (duration != null) 'duration': duration,
    });
  }

  TimersCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<int> numberOfReps,
      Value<int> numberOfSets,
      Value<int> breakBetweenReps,
      Value<int> breakBetweenSets,
      Value<int> duration}) {
    return TimersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      numberOfReps: numberOfReps ?? this.numberOfReps,
      numberOfSets: numberOfSets ?? this.numberOfSets,
      breakBetweenReps: breakBetweenReps ?? this.breakBetweenReps,
      breakBetweenSets: breakBetweenSets ?? this.breakBetweenSets,
      duration: duration ?? this.duration,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (numberOfReps.present) {
      map['number_of_reps'] = Variable<int>(numberOfReps.value);
    }
    if (numberOfSets.present) {
      map['number_of_sets'] = Variable<int>(numberOfSets.value);
    }
    if (breakBetweenReps.present) {
      map['break_between_reps'] = Variable<int>(breakBetweenReps.value);
    }
    if (breakBetweenSets.present) {
      map['break_between_sets'] = Variable<int>(breakBetweenSets.value);
    }
    if (duration.present) {
      map['duration'] = Variable<int>(duration.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TimersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('numberOfReps: $numberOfReps, ')
          ..write('numberOfSets: $numberOfSets, ')
          ..write('breakBetweenReps: $breakBetweenReps, ')
          ..write('breakBetweenSets: $breakBetweenSets, ')
          ..write('duration: $duration')
          ..write(')'))
        .toString();
  }
}

class $TimersTable extends Timers with TableInfo<$TimersTable, TimerEntry> {
  final GeneratedDatabase _db;
  final String _alias;
  $TimersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        defaultValue: const Constant(''));
  }

  final VerificationMeta _numberOfRepsMeta =
      const VerificationMeta('numberOfReps');
  GeneratedIntColumn _numberOfReps;
  @override
  GeneratedIntColumn get numberOfReps =>
      _numberOfReps ??= _constructNumberOfReps();
  GeneratedIntColumn _constructNumberOfReps() {
    return GeneratedIntColumn('number_of_reps', $tableName, false,
        defaultValue: const Constant(4));
  }

  final VerificationMeta _numberOfSetsMeta =
      const VerificationMeta('numberOfSets');
  GeneratedIntColumn _numberOfSets;
  @override
  GeneratedIntColumn get numberOfSets =>
      _numberOfSets ??= _constructNumberOfSets();
  GeneratedIntColumn _constructNumberOfSets() {
    return GeneratedIntColumn('number_of_sets', $tableName, false,
        defaultValue: const Constant(4));
  }

  final VerificationMeta _breakBetweenRepsMeta =
      const VerificationMeta('breakBetweenReps');
  GeneratedIntColumn _breakBetweenReps;
  @override
  GeneratedIntColumn get breakBetweenReps =>
      _breakBetweenReps ??= _constructBreakBetweenReps();
  GeneratedIntColumn _constructBreakBetweenReps() {
    return GeneratedIntColumn('break_between_reps', $tableName, false,
        defaultValue: const Constant(10));
  }

  final VerificationMeta _breakBetweenSetsMeta =
      const VerificationMeta('breakBetweenSets');
  GeneratedIntColumn _breakBetweenSets;
  @override
  GeneratedIntColumn get breakBetweenSets =>
      _breakBetweenSets ??= _constructBreakBetweenSets();
  GeneratedIntColumn _constructBreakBetweenSets() {
    return GeneratedIntColumn('break_between_sets', $tableName, false,
        defaultValue: const Constant(60));
  }

  final VerificationMeta _durationMeta = const VerificationMeta('duration');
  GeneratedIntColumn _duration;
  @override
  GeneratedIntColumn get duration => _duration ??= _constructDuration();
  GeneratedIntColumn _constructDuration() {
    return GeneratedIntColumn('duration', $tableName, false,
        defaultValue: const Constant(30));
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        numberOfReps,
        numberOfSets,
        breakBetweenReps,
        breakBetweenSets,
        duration
      ];
  @override
  $TimersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'timers';
  @override
  final String actualTableName = 'timers';
  @override
  VerificationContext validateIntegrity(Insertable<TimerEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    }
    if (data.containsKey('number_of_reps')) {
      context.handle(
          _numberOfRepsMeta,
          numberOfReps.isAcceptableOrUnknown(
              data['number_of_reps'], _numberOfRepsMeta));
    }
    if (data.containsKey('number_of_sets')) {
      context.handle(
          _numberOfSetsMeta,
          numberOfSets.isAcceptableOrUnknown(
              data['number_of_sets'], _numberOfSetsMeta));
    }
    if (data.containsKey('break_between_reps')) {
      context.handle(
          _breakBetweenRepsMeta,
          breakBetweenReps.isAcceptableOrUnknown(
              data['break_between_reps'], _breakBetweenRepsMeta));
    }
    if (data.containsKey('break_between_sets')) {
      context.handle(
          _breakBetweenSetsMeta,
          breakBetweenSets.isAcceptableOrUnknown(
              data['break_between_sets'], _breakBetweenSetsMeta));
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration'], _durationMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TimerEntry map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TimerEntry.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TimersTable createAlias(String alias) {
    return $TimersTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TimersTable _timers;
  $TimersTable get timers => _timers ??= $TimersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [timers];
}
