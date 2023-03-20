import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'reproduce_plugin_template_platform_interface.dart';

/// An implementation of [ReproducePluginTemplatePlatform] that uses method channels.
class MethodChannelReproducePluginTemplate extends ReproducePluginTemplatePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('reproduce_plugin_template');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
