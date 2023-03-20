import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reproduce_plugin_template/reproduce_plugin_template_method_channel.dart';

void main() {
  MethodChannelReproducePluginTemplate platform = MethodChannelReproducePluginTemplate();
  const MethodChannel channel = MethodChannel('reproduce_plugin_template');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
