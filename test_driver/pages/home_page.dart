import 'dart:io';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';

class HomePage{
    final counterTextFinder = find.byValueKey('counterText');
    final buttonPlus = find.byTooltip('Increment');
    final buttonAdd = find.byValueKey('add');
    final buttonSubtract = find.byValueKey('subtract');
    final alertText = find.byValueKey('alert_text');
    final buttonClose = find.byValueKey('close_button');

    FlutterDriver _driver;

    // constructor
    HomePage(FlutterDriver driver){
      this._driver = driver;
    }

    // getters for all the page objects lies here.
    // refer to this doc, pay attention to the async tasks! https://dart.dev/codelabs/async-await
    Future<String> getCounterText() async{
      return await _driver.getText(counterTextFinder);
    }

    Future<SerializableFinder> getSubtractButton() async{
      return buttonSubtract;
    }
}