import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/app_card.dart';
import '../../core/utility.dart';

class MeadowDashboard extends StatefulWidget {
  const MeadowDashboard({super.key});

  @override
  State<MeadowDashboard> createState() => _MeadowDashboardState();
}

class _MeadowDashboardState extends State<MeadowDashboard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE3F2FD), Colors.white],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Healthy Meadow',
                            style: theme.textTheme.displayMedium?.copyWith(
                              color: AppColors.primaryBlue,
                            ),
                          ),
                          Text(
                            'What should we play today?',
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.logout_rounded,
                            color: AppColors.textSecondary,
                          ),
                          tooltip: 'Logout',
                          onPressed: () async {
                            await const TokenStore().clearToken();
                            if (mounted) {
                              context.go('/login');
                            }
                          },
                        ),
                        const SizedBox(width: 8),
                        const CircleAvatar(
                          radius: 28,
                          backgroundColor: AppColors.softBlue,
                          child: Icon(
                            Icons.person,
                            color: AppColors.primaryBlue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: [
                    _ActivityDiscoveryCard(
                      title: 'Matching Mania',
                      icon: Icons.grid_3x3_rounded,
                      color: AppColors.softBlue,
                      accentColor: AppColors.primaryBlue,
                      onTap: () => context.push('/activity/matching'),
                    ),
                    _ActivityDiscoveryCard(
                      title: 'Match the Colours',
                      icon: Icons.colorize,
                      color: AppColors.brightYellow,
                      accentColor: AppColors.brightOrange,
                      onTap: () => context.push('/activity/color_matching'),
                    ),
                    _ActivityDiscoveryCard(
                      title: 'Tap to Select',
                      icon: Icons.touch_app_rounded,
                      color: AppColors.grassGreen,
                      accentColor: AppColors.primaryGreen,
                      onTap: () => context.push('/activity/tap_to_select'),
                    ),
                    _ActivityDiscoveryCard(
                      title: 'Phonics Fun',
                      icon: Icons.record_voice_over_rounded,
                      color: AppColors.palePink,
                      accentColor: AppColors.coral,
                      onTap: () => context.push('/activity/phonics'),
                    ),
                  ],
                ),
              ),
              _ParentGateBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActivityDiscoveryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Color accentColor;
  final VoidCallback onTap;

  const _ActivityDiscoveryCard({
    required this.title,
    required this.icon,
    required this.color,
    required this.accentColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      color: color,
      onTap: onTap,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 40, color: accentColor),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColors.textPrimary,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _ParentGateBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onLongPress: () {
              // Secure gate triggered
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Entering Parent Settings...')),
              );
              context.go('/dashboard');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.scaffoldBackground,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.lock_outline,
                    size: 18,
                    color: AppColors.textSecondary,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Hold 3s for Settings',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
