import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/home_page.dart';

class InitialStateOfApp extends GivenWithWorld<FlutterWorld> {
  InitialStateOfApp()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    //Instantiate homepage with world.driver as parameter for flutter driver object
    HomePage homePage = HomePage(world.driver);
    print('this is the initial state of the app');
    //expectMatch(await homePage.getCounterValue(), value);

    // try to click one element
    // use await here because its Future method, it runs in async
    FlutterDriverUtils.tap(world.driver, await homePage.getSubtractButton());

    // sleep
    // await Future.delayed(Duration(seconds: 3));
  }

  @override
  RegExp get pattern => RegExp(r"I test the initial state of the app");
}
