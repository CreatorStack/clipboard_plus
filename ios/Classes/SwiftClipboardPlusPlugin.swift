import Flutter
import UIKit

public class SwiftClipboardPlusPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "clipboard_plus", binaryMessenger: registrar.messenger())
    let instance = SwiftClipboardPlusPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      
      if (call.method == "copyImageOnClipboard") {
          let args = (call.arguments as! NSDictionary)
          let backgroundImagePath = args["imagePath"] as! String;
          let fileManager = FileManager.default;
          
          var backgroundImage: UIImage? = nil;
          let isBackgroundImageExist = fileManager.fileExists(atPath: backgroundImagePath);
          if (isBackgroundImageExist) {
              backgroundImage = UIImage(contentsOfFile: backgroundImagePath)!;
          } else {
              result(0);
              return;
          }
          
          UIPasteboard.general.image = backgroundImage
          result(1);
      }
  }
}
