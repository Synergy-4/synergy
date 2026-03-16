import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synergy/core/utility.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'core/theme/app_theme.dart';
import 'core/router.dart';
import 'core/database_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  sqfliteFfiInit();
  // Initialize Database
  if (kIsWeb) {
    // Use web implementation on the web
    databaseFactory = databaseFactoryFfiWeb;
  } else {
    // Use ffi on Linux, Windows, macOS, Android, iOS
    // sqfliteFfiInit() might be needed for desktop
    databaseFactory = databaseFactoryFfi;
  }

  runApp(const ProviderScope(child: SynergyApp()));
}

class SynergyApp extends StatelessWidget {
  const SynergyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Synergy',
      theme: AppTheme.lightTheme,
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      key: AppSnackbar.navigatorKey,
    );
  }
}
