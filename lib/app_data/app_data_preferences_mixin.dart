// Import external packages.
import 'package:shared_preferences/shared_preferences.dart';

// Import project-specific files.
import 'package:kar_kam_1/app_data/app_data.dart';

mixin AppDataPreferencesMixin on AppData {
  /// Loads a user preference from file.
  Future<void> getPref(String string, SharedPreferences? userPrefs) async {
    // If [userPrefs] is null then get an instance of [SharedPreferences]
    // in order to retrieve stored data.
    userPrefs ?? await SharedPreferences.getInstance();

    // Get user preference from file and upload to [AppData].
    try {
      // Attempt to get bool from file.
      update(string: string, value: userPrefs?.getBool(string));
      return;
    } catch (_) {}
    try {
      // Attempt to get double from file.
      update(string: string, value: userPrefs?.getDouble(string));
      return;
    } catch (_) {}
    try {
      // Attempt to get string from file.
      update(string: string, value: userPrefs?.getString(string));
      return;
    } catch (_) {}
    try {
      // Attempt to get a list of strings from file.
      update(string: string, value: userPrefs?.getStringList(string));
      return;
    } catch (_) {}
  }

  /// Gets all user preferences from file.
  Future<void> getPrefs() async {
    // Get an instance of [SharedPreferences] for retrieving stored data.
    final SharedPreferences userPrefs = await SharedPreferences.getInstance();

    // Load data using [getPref] and providing [userPrefs] for speed.
    getPref('testString', userPrefs);
    getPref('testDouble', userPrefs);
    getPref('testInt', userPrefs);
    getPref('testBool', userPrefs);
    getPref('testStringList', userPrefs);
  }

  /// Save [AppData] field values (user preferences) to file.
  Future<void> setPref(
      String string, var value, SharedPreferences? userPrefs) async {
    // If [userPrefs] is null then get an instance of [SharedPreferences]
    // in order to save data.
    userPrefs ?? await SharedPreferences.getInstance();

    // Get user preference to file.
    if (value is bool) {
      // Attempt to save bool to file.
      userPrefs?.setBool(string, value);
    } else if (value is int) {
      // Attempt to save int to file.
      userPrefs?.setInt(string, value);
    } else if (value is double) {
      // Attempt to save double to file.
      userPrefs?.setDouble(string, value);
    } else if (value is String) {
      // Attempt to save string to file.
      userPrefs?.setString(string, value);
    } else if (value is List<String>) {
      // Attempt to save a list of strings to file.
      userPrefs?.setStringList(string, value);
    } else {
      // Throw a TypeError as shared_preferences only supports the above types.
      throw TypeError();
    }
  }

  /// Save [AppData] field values (user preferences) to file.
  Future<void> setPrefs() async {
    // Get an instance of [SharedPreferences] for retrieving stored data.
    final SharedPreferences userPrefs = await SharedPreferences.getInstance();

    // Save data using [setPref] and providing [userPrefs] for speed.
    setPref('testString', testString, userPrefs);
    setPref('testDouble', testDouble, userPrefs);
    setPref('testInt', testInt, userPrefs);
    setPref('testBool', testBool, userPrefs);
    setPref('testStringList', testStringList, userPrefs);
  }
}
