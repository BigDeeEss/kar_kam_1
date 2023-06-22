// Import external packages.
import 'package:flutter/material.dart';

/// Stores app data.
abstract class AppData extends ChangeNotifier {
  String? testString;
  double? testDouble;
  int? testInt;
  bool? testBool;
  List<String>? testStringList;

  /// A map that relates a string representation of field to the corresponding
  /// getter. So, for instance, 'test' to 'AppData.test'.
  Map<String, dynamic>? getMap;

  /// A map that relates a string to a function that sets fields. So, for
  /// instance, 'test' to '(String? value) => test = value'.
  Map<String, Function>? setMap;

  /// Initialises [getMap] and [setMap].
  void initialise() {
    getMap = {
      'testString': testString,
      'testDouble': testDouble,
      'testInt': testInt,
      'testBool': testBool,
      'testStringList': testStringList,
    };

    setMap = {
      'testString': (String? value) => testString = value,
      'testDouble': (double? value) => testDouble = value,
      'testInt': (int? value) => testInt = value,
      'testBool': (bool? value) => testBool = value,
      'testStringList': (List<String>? value) => testStringList = value,
    };
  }

  /// Updates fields in [AppData] with [newValue] using [identifier] to
  /// determine which field to change.
  void update({
    bool? notify,
    required String string,
    var value,
  });
}
