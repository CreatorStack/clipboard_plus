import 'clipboard_plus_platform_interface.dart';

class ClipboardPlus {
  static Future<bool?> copyImageOnClipboard(String imagePath) async {
    return ClipboardPlusPlatform.instance.copyImageOnClipboard(imagePath);
  }
}
