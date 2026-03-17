import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:synergy/core/utility.dart';
import '../features/auth/login_screen.dart';
import '../features/auth/register_screen.dart';
import '../features/home/meadow_dashboard.dart';
import '../features/activity/activity_screen.dart';
import '../features/parent/children_screen.dart';
import '../features/parent/child_form_screen.dart';
import '../features/dashboard/dashboard_shell.dart';
import '../features/home/home_screen.dart';
import '../features/progress/progress_screen.dart';
import '../features/settings/settings_screen.dart';
import '../features/settings/change_password_screen.dart';
import '../features/session_detail/session_detail_screen.dart';
import '../models/child_model.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/child/dashboard',
        builder: (context, state) => const MeadowDashboard(),
      ),
      GoRoute(
        path: '/activity/:type',
        builder: (context, state) {
          final type = state.pathParameters['type']!;
          return ActivityScreen(type: type);
        },
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => DashboardShell(child: child),
        routes: [
          GoRoute(
            path: '/dashboard',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/progress',
            builder: (context, state) => const ProgressScreen(),
          ),
          GoRoute(
            path: '/children',
            builder: (context, state) => const ChildrenScreen(),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsScreen(),
            routes: [
              GoRoute(
                path: 'change-password',
                // parentNavigatorKey: _rootNavigatorKey,
                builder: (context, state) => const ChangePasswordScreen(),
              ),
            ],
          ),
          GoRoute(
            path: '/sessions/:id',
            // parentNavigatorKey: _rootNavigatorKey,
            builder: (context, state) {
              final id = int.parse(state.pathParameters['id']!);
              return SessionDetailScreen(sessionId: id);
            },
          ),
        ],
      ),
      GoRoute(
        path: '/parent/child-form',
        // parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          final child = state.extra as ChildModel?;
          return ChildFormScreen(child: child);
        },
      ),
    ],
  );
}
