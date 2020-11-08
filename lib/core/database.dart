import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

@DataClassName('TimerEntry')
class Timers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withDefault(const Constant(''))();
  IntColumn get numberOfReps => integer().withDefault(const Constant(4))();
  IntColumn get numberOfSets => integer().withDefault(const Constant(4))();
  IntColumn get breakBetweenReps => integer().withDefault(const Constant(10))();
  IntColumn get breakBetweenSets => integer().withDefault(const Constant(60))();
  IntColumn get duration => integer().withDefault(const Constant(30))();
}

@UseMoor(tables: [Timers])
class Database extends _$Database {
  Database()
      : super(FlutterQueryExecutor.inDatabaseFolder(
          path: 'app.db',
          logStatements: true,
        ));

  @override
  int get schemaVersion => 1;

  Future<List<TimerEntry>> getAll() {
    return select(timers).get();
  }

  Future<TimerEntry> get(int id) {
    return (select(timers)..where((t) => t.id.equals(id))).getSingle();
  }

  Future<bool> updateEntry(TimerEntry entry) {
    return update(timers).replace(entry);
  }

  Future<int> deleteEntry(TimerEntry entry) {
    return delete(timers).delete(entry);
  }

  Future<int> createEntry(TimerEntry entry) {
    return into(timers).insert(entry);
  }
}
