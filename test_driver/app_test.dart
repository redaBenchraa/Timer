import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('timer App', () {
    final addTimerButtonFinder = find.byValueKey('add_timer_button');
    final addButtonFinder = find.byValueKey('add_button');
    final nameValueFinder = find.byValueKey('name_value');
    final nameTileFinder = find.byValueKey('name_tile');
    final inputFinder = find.byValueKey('input');
    final setButtonFinder = find.byValueKey('set_button');
    final repititionDurationTileFinder =
        find.byValueKey('repitition_duration_tile');
    final repititionDurationValueFinder =
        find.byValueKey('repitition_duration_value');
    final decrementButtonFinder = find.byValueKey('decrement_button');
    final incrementButtonFinder = find.byValueKey('increment_button');
    final numberValueFinder = find.byValueKey('number_value');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Add timer', () async {
      await driver.tap(addButtonFinder);
      expect(await driver.getText(nameValueFinder), '');
      expect(await driver.getText(repititionDurationValueFinder), '30 s');
      await driver.tap(addTimerButtonFinder);
      expect(await driver.getText(nameValueFinder), '');

      await driver.tap(nameTileFinder);
      await driver.tap(inputFinder);
      await driver.enterText('name');
      await driver.tap(setButtonFinder);
      expect(await driver.getText(nameValueFinder), 'name');

      await driver.tap(repititionDurationTileFinder);
      expect(await driver.getText(numberValueFinder), '30');
      await driver.tap(decrementButtonFinder);
      expect(await driver.getText(numberValueFinder), '20');
      await driver.tap(decrementButtonFinder);
      expect(await driver.getText(numberValueFinder), '10');
      await driver.tap(decrementButtonFinder);
      expect(await driver.getText(numberValueFinder), '10');
      await driver.tap(incrementButtonFinder);
      expect(await driver.getText(numberValueFinder), '20');
      await driver.tap(setButtonFinder);
      expect(await driver.getText(repititionDurationValueFinder), '20 s');

      await driver.tap(addTimerButtonFinder);
    });
  });
}
