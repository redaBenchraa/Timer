import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

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

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Timers])
class Database extends _$Database {
  Database() : super(_openConnection());

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
