import 'dart:async';

import 'package:flutter/services.dart';

class FlutterSplashScreen {
  static const MethodChannel _channel =
      const MethodChannel('flutter_splash_screen');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
