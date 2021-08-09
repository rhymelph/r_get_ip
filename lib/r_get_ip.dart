import 'dart:async';

import 'package:flutter/services.dart';

class RGetIp {
  static const MethodChannel _channel = const MethodChannel('r_get_ip');

  static Future<String?> get networkType async {
    final String? type = await _channel.invokeMethod('getNetworkType');
    return type;
  }

  static Future<String?> get internalIP async {
    final String? ip = await _channel.invokeMethod('getInternalIP');
    return ip;
  }

  static Future<String?> get externalIP async {
    final String? ip = await _channel.invokeMethod('getExternalIP');
    return ip;
  }
}
