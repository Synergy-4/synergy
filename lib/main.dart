import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:synergy/providers/settings_provider.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'core/theme/app_theme.dart';
import 'core/router.dart';
// import 'core/database_service.dart';

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
    databaseFactory = databaseFactory;
  }

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const SynergyApp(),
    ),
  );
}

class SynergyApp extends ConsumerWidget {
  const SynergyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);

    return MaterialApp.router(
      title: 'Synergy',
      theme: settings.highContrast ? AppTheme.darkTheme : AppTheme.lightTheme,
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.linear(settings.textScale),
          ),
          child: child!,
        );
      },
    );
  }
}
