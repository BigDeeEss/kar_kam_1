
import 'package:flutter/material.dart';

/// Stores app data.
abstract class AppData extends ChangeNotifier {


  /// The available screen dimensions.
  Rect? basePageViewRect;
}