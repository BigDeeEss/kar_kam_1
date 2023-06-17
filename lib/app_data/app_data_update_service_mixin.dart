// Import project-specific files.
import 'package:kar_kam_1/app_data/app_data.dart';

mixin AppDataUpdateServiceMixin on AppData {
  void initialiseData() {
    test = 'A non-null message for test string instance variable in AppData.';
  }
}