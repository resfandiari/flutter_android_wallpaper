import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_android_wallpaper/flutter_android_wallpaper_method_channel.dart';

void main() {
  MethodChannelFlutterAndroidWallpaper platform = MethodChannelFlutterAndroidWallpaper();
  const MethodChannel channel = MethodChannel('flutter_android_wallpaper');

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
