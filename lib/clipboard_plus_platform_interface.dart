import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'clipboard_plus_method_channel.dart';

abstract class ClipboardPlusPlatform extends PlatformInterface {
  /// Constructs a ClipboardPlusPlatform.
  ClipboardPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static ClipboardPlusPlatform _instance = MethodChannelClipboardPlus();

  /// The default instance of [ClipboardPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelClipboardPlus].
  static ClipboardPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ClipboardPlusPlatform] when
  /// they register themselves.
  static set instance(ClipboardPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> copyImageOnClipboard(String imagePath) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
