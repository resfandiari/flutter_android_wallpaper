import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_android_wallpaper_method_channel.dart';

abstract class FlutterAndroidWallpaperPlatform extends PlatformInterface {
  /// Constructs a FlutterAndroidWallpaperPlatform.
  FlutterAndroidWallpaperPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterAndroidWallpaperPlatform _instance = MethodChannelFlutterAndroidWallpaper();

  /// The default instance of [FlutterAndroidWallpaperPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterAndroidWallpaper].
  static FlutterAndroidWallpaperPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterAndroidWallpaperPlatform] when
  /// they register themselves.
  static set instance(FlutterAndroidWallpaperPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
