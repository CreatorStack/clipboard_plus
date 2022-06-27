#import "ClipboardPlusPlugin.h"
#if __has_include(<clipboard_plus/clipboard_plus-Swift.h>)
#import <clipboard_plus/clipboard_plus-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "clipboard_plus-Swift.h"
#endif

@implementation ClipboardPlusPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftClipboardPlusPlugin registerWithRegistrar:registrar];
}
@end
