import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/home_page.dart';

StepDefinitionGeneric iHaveLoop() {
  return when1<int, FlutterWorld>(
    'I have loop of {int} times',
    (loopTimes, context) async {
      print('hey there!');
      // for (var i = 0; i < loopTimes; i+=1) {
      //   // await FlutterDriverUtils.tap(context.world.driver, locator);
      //   print('hey bitch!');
      // }
    }
  );
}