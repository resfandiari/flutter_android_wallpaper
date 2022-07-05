
import 'flutter_android_wallpaper_platform_interface.dart';

class FlutterAndroidWallpaper {
  Future<String?> getPlatformVersion() {
    return FlutterAndroidWallpaperPlatform.instance.getPlatformVersion();
  }
}
