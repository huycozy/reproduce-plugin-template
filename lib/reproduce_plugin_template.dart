
import 'reproduce_plugin_template_platform_interface.dart';

class ReproducePluginTemplate {
  Future<String?> getPlatformVersion() {
    return ReproducePluginTemplatePlatform.instance.getPlatformVersion();
  }
}
