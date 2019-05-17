import 'dart:async';

import 'package:flutter/services.dart';

class ModelsTemplate {
  static const MethodChannel _channel =
      const MethodChannel('models_template');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
