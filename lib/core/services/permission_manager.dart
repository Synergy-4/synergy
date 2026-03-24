import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/foundation.dart';

class PermissionManager {
  static final PermissionManager _instance = PermissionManager._internal();
  static PermissionManager get instance => _instance;

  PermissionManager._internal();

  /// Requests the necessary permissions on app startup.
  Future<void> initializePermissions() async {
    // Permission checks are typically not needed on the Web.
    if (kIsWeb) return;

    // Check microphone permission
    var status = await Permission.microphone.status;
    if (!status.isGranted) {
      status = await Permission.microphone.request();
      if (status.isPermanentlyDenied) {
        // Here you could optionally prompt the user to open settings:
        print("Microphone permission is permanently denied. Please enable it in Settings.");
        // openAppSettings(); 
      }
    }
    
    // Check speech recognition permission if required for phonics/games (Optional)
    // var speechStatus = await Permission.speech.status;
    // if (!speechStatus.isGranted) {
    //   await Permission.speech.request();
    // }
  }
}
