// Import external packages.
import 'package:kar_kam_1/app_data/get_it_service.dart';

// Import project-specific packages.
import 'package:kar_kam_1/app_data/app_data.dart';
import 'package:kar_kam_1/app_data/app_data_preference_service_mixin.dart';
import 'package:kar_kam_1/app_data/app_data_update_service_mixin.dart';

class AppDataPreferenceService extends AppData
    with AppDataUpdateServiceMixin, AppDataPreferenceServiceMixin {
  AppDataPreferenceService() {
    initialise();
  }

  @override
  void initialise() async {
    await getPrefs();
    print('test 1');
    // Future.delayed(const Duration(seconds: 5))
    //     .then((_) {
    //   print('test 4');
    //   GetItService.signalReady<AppData>(this);
    //   print('test 5');
    // });
    GetItService.signalReady<AppData>(this);
    print('test 2');
    // Future.delayed(const Duration(seconds: 1));
    print('test 3');
  }
}
