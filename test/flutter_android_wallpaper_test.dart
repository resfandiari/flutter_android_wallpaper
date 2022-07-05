import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_android_wallpaper/flutter_android_wallpaper.dart';
import 'package:flutter_android_wallpaper/flutter_android_wallpaper_platform_interface.dart';
import 'package:flutter_android_wallpaper/flutter_android_wallpaper_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterAndroidWallpaperPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterAndroidWallpaperPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterAndroidWallpaperPlatform initialPlatform = FlutterAndroidWallpaperPlatform.instance;

  test('$MethodChannelFlutterAndroidWallpaper is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterAndroidWallpaper>());
  });

  test('getPlatformVersion', () async {
    FlutterAndroidWallpaper flutterAndroidWallpaperPlugin = FlutterAndroidWallpaper();
    MockFlutterAndroidWallpaperPlatform fakePlatform = MockFlutterAndroidWallpaperPlatform();
    FlutterAndroidWallpaperPlatform.instance = fakePlatform;
  
    expect(await flutterAndroidWallpaperPlugin.getPlatformVersion(), '42');
  });
}
