import 'package:flutter_test/flutter_test.dart';
import 'package:reproduce_plugin_template/reproduce_plugin_template.dart';
import 'package:reproduce_plugin_template/reproduce_plugin_template_platform_interface.dart';
import 'package:reproduce_plugin_template/reproduce_plugin_template_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockReproducePluginTemplatePlatform
    with MockPlatformInterfaceMixin
    implements ReproducePluginTemplatePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ReproducePluginTemplatePlatform initialPlatform = ReproducePluginTemplatePlatform.instance;

  test('$MethodChannelReproducePluginTemplate is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelReproducePluginTemplate>());
  });

  test('getPlatformVersion', () async {
    ReproducePluginTemplate reproducePluginTemplatePlugin = ReproducePluginTemplate();
    MockReproducePluginTemplatePlatform fakePlatform = MockReproducePluginTemplatePlatform();
    ReproducePluginTemplatePlatform.instance = fakePlatform;

    expect(await reproducePluginTemplatePlugin.getPlatformVersion(), '42');
  });
}
