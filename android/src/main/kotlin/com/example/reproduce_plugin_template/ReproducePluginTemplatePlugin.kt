package com.example.reproduce_plugin_template

import android.util.Log
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
/** ReproducePluginTemplatePlugin */
class ReproducePluginTemplatePlugin: FlutterPlugin, MethodCallHandler, ActivityAware {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "reproduce_plugin_template")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    Log.v("ReproducePluginTemplatePlugin", "onMethodCall")
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    Log.v("ReproducePluginTemplatePlugin", "onAttachedToActivity")
  }

  override fun onDetachedFromActivity() {
    Log.v("ReproducePluginTemplatePlugin", "onDetachedFromActivity")
  }

  override fun onDetachedFromActivityForConfigChanges() {
    Log.v("ReproducePluginTemplatePlugin", "onDetachedFromActivityForConfigChanges")
  }

  override fun onReattachedToActivityForConfigChanges(p0: ActivityPluginBinding) {
    Log.v("ReproducePluginTemplatePlugin", "onReattachedToActivityForConfigChanges")
  }



}
