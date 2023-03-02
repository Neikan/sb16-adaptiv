// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/foundation.dart';

class AppPlatform {
  static const Map<String, CustomPlatform> _platforms = {
    'android': CustomPlatform.android,
    'fuchsia': CustomPlatform.fuchsia,
    'ios': CustomPlatform.ios,
    'linux': CustomPlatform.linux,
    'macos': CustomPlatform.macos,
    'web': CustomPlatform.web,
    'windows': CustomPlatform.windows,
  };

  static CustomPlatform _getPlatform() {
    if (kIsWeb) return CustomPlatform.web;

    return _platforms[Platform.operatingSystem] ?? CustomPlatform.undefined;
  }

  static CustomPlatform get platform => _getPlatform();

  static bool get isMobile =>
      platform == CustomPlatform.android || platform == CustomPlatform.ios;
}

enum CustomPlatform {
  android,
  fuchsia,
  ios,
  linux,
  macos,
  web,
  windows,
  undefined
}
