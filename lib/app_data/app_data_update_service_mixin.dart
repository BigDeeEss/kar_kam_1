

import 'package:kar_kam_1/app_data/app_data.dart';

mixin AppDataUpdateServiceMixin on AppData {

  @override
  void initialise() {
    test = 'A non-null message for test string instance variable in AppData.';
  }
}