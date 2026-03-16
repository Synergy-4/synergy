import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:synergy/core/utility.dart';
import '../../core/theme/app_colors.dart';
import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';
import '../../models/auth_models.dart';
import '../../models/child_model.dart';
import '../../core/database_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  void login() async {
    final request = LoginRequest(
      username: _emailController.text.trim(),
      password: _passwordController.text,
      client_id: "",
      client_secret: "",
      grant_type: "",
      scope: "",
    );

    final result = await ApiClient.instance.post(
      '/auth/login',
      body: request.toJson(),
      withAuth: false,
    );

    switch (result) {
      case ApiSuccess(:final data):
        final token = AuthTokenResponse.fromJson(data);
        await const TokenStore().saveToken(token.accessToken);

        // Fetch and store children
        final childrenResult = await ApiClient.instance.getList(
          '/children/',
          queryParams: {"skip": 0, "limit": 100},
          withAuth: true,
        );
        if (childrenResult is ApiSuccess) {
          final List childrenData = childrenResult.data;
          final children = childrenData
              .map((json) => ChildModel.fromJson(json as Map<String, dynamic>))
              .toList();
          await DatabaseService.instance.saveChildren(children);
        }

        // ignore: use_build_context_synchronously
        context.go('/dashboard');
      case ApiFailure(:final message):
        AppSnackbar.error(message: message);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // Logo/Brand area
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: AppColors.softBlue,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.primaryBlue, width: 4),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.hub_outlined,
                      size: 60,
                      color: AppColors.primaryBlue,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: Text(
                  'Synergy',
                  style: theme.textTheme.displayLarge?.copyWith(
                    color: AppColors.primaryBlue,
                    letterSpacing: -1,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Connect. Learn. Grow.',
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: 60),

              Text('Welcome Back!', style: theme.textTheme.displayMedium),
              const SizedBox(height: 8),
              Text(
                'Sign in to see your child\'s progress',
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(height: 32),

              AppCard(
                borderRadius: 28,
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                          onPressed: () => setState(
                            () => _obscurePassword = !_obscurePassword,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Forgot Password?'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    AppButton(text: 'Login', onPressed: login),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      // Navigate to register
                    },
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
