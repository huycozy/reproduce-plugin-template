import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'reproduce_plugin_template_method_channel.dart';

abstract class ReproducePluginTemplatePlatform extends PlatformInterface {
  /// Constructs a ReproducePluginTemplatePlatform.
  ReproducePluginTemplatePlatform() : super(token: _token);

  static final Object _token = Object();

  static ReproducePluginTemplatePlatform _instance = MethodChannelReproducePluginTemplate();

  /// The default instance of [ReproducePluginTemplatePlatform] to use.
  ///
  /// Defaults to [MethodChannelReproducePluginTemplate].
  static ReproducePluginTemplatePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ReproducePluginTemplatePlatform] when
  /// they register themselves.
  static set instance(ReproducePluginTemplatePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
