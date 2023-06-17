// Import external packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:kar_kam_1/app_data/app_data.dart';
import 'package:kar_kam_1/app_data/app_data_preference_service.dart';
import 'package:kar_kam_1/app_data/get_it_service.dart';
import 'package:kar_kam_1/main/kar_kam.dart';

/// App start point.
void main() {
  // Use [GetItService] as the single point of access to [GetIt] and
  // register an instance of [AppDataService].
  GetItService.register<AppData>(AppDataPreferenceService());

  // Run the app.
  runApp(const KarKam());
}

