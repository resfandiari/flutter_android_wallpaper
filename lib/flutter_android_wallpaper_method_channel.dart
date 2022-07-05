import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_android_wallpaper_platform_interface.dart';

/// An implementation of [FlutterAndroidWallpaperPlatform] that uses method channels.
class MethodChannelFlutterAndroidWallpaper extends FlutterAndroidWallpaperPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_android_wallpaper');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
