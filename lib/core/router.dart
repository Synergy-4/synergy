import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:synergy/core/utility.dart';
import '../features/auth/login_screen.dart';
import '../features/auth/register_screen.dart';
import '../features/home/meadow_dashboard.dart';
import '../features/activity/activity_screen.dart';
import '../features/parent/parent_portal_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: AppSnackbar.navigatorKey,
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const MeadowDashboard(),
      ),
      GoRoute(
        path: '/activity/:type',
        builder: (context, state) {
          final type = state.pathParameters['type']!;
          return ActivityScreen(type: type);
        },
      ),
      GoRoute(
        path: '/parent/settings',
        builder: (context, state) => const ParentPortalScreen(),
      ),
    ],
  );
}
