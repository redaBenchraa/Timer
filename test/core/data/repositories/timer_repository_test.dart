import 'package:test/test.dart';
import 'package:timer/core/data/repositories/timer_repository.dart';
import 'package:timer/core/database.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  TimerRepository timerRepository;

  setUp(() {
    timerRepository = TimerRepository();
  });

  test('get subtitle from timer', () async {
    final timer = TimerEntry.fromJson(fixture('timer_entry.json'));
    final result = timerRepository.getSubtitle(timer);
    expect(result, "14 minutes");
  });
}
