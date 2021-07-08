import 'dart:async';

import 'package:flutter/services.dart';

class PluginCode {
  static const MethodChannel _channel =
      const MethodChannel('plugin_code');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
