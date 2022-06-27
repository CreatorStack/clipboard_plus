// import 'package:flutter_test/flutter_test.dart';
// import 'package:clipboard_plus/clipboard_plus.dart';
// import 'package:clipboard_plus/clipboard_plus_platform_interface.dart';
// import 'package:clipboard_plus/clipboard_plus_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockClipboardPlusPlatform 
//     with MockPlatformInterfaceMixin
//     implements ClipboardPlusPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final ClipboardPlusPlatform initialPlatform = ClipboardPlusPlatform.instance;

//   test('$MethodChannelClipboardPlus is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelClipboardPlus>());
//   });

//   test('getPlatformVersion', () async {
//     ClipboardPlus clipboardPlusPlugin = ClipboardPlus();
//     MockClipboardPlusPlatform fakePlatform = MockClipboardPlusPlatform();
//     ClipboardPlusPlatform.instance = fakePlatform;
  
//     expect(await clipboardPlusPlugin.getPlatformVersion(), '42');
//   });
// }
