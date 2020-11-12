import 'package:flutter_driver/driver_extension.dart';
import 'package:moor/ffi.dart';
import 'package:timer/core/database.dart';
import 'package:timer/main.dart' as app;
import 'package:test/test.dart';

void main() {
  Database database;

  setUp(() {
    database = Database(database: VmDatabase.memory());
  });
  tearDown(() async {
    await database.close();
  });
  enableFlutterDriverExtension();
  app.main();
}
