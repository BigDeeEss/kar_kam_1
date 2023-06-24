// Import external packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:kar_kam_1/base_ui/base_ui_view.dart';
import 'package:kar_kam_1/utils/data_store.dart';

/// Implements a generic page layout design.
///
/// [BaseUI] presents a similar screen layout for each page with:
///     1. an AppBar at the top with a title,
///     2. specific screen contents including buttons for navigation
///        and functionality, and
///     3. a bottom navigation bar.
///
///  A combination of [BaseUI] and [_BaseUIView] calculate [baseUIViewRect]
///  which represents the available screen dimensions.
class BaseUI extends StatelessWidget {
  const BaseUI({
    super.key,
    // this.baseUISpec,
  });

  /// Defines the current layout of the UI..
  // final BaseUISpec? baseUISpec;

  @override
  Widget build(BuildContext context) {
    // Required for calculating [baseUIViewRect], the available screen
    // dimensions via the use of [GlobalKeyExtension.globalPaintBounds].
    GlobalKey baseUIViewKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: DataStore<GlobalKey>(
        key: const ValueKey('baseUIViewKey'),
        data: baseUIViewKey,
        child: BaseUIView(
          key: baseUIViewKey,
          children: const [Placeholder()],
          // children: baseUISpec,
        ),
      ),
    );
  }
}
