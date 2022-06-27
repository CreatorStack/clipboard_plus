import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'clipboard_plus_platform_interface.dart';

/// An implementation of [ClipboardPlusPlatform] that uses method channels.
class MethodChannelClipboardPlus extends ClipboardPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('clipboard_plus');

  @override
  Future<bool?> copyImageOnClipboard(String imagePath) async {
    final result = await methodChannel.invokeMethod<int>(
      'copyImageOnClipboard',
      {"imagePath": imagePath},
    );
    // 1 -> success
    // 0 -> failure
    return result == 1;
  }
}
