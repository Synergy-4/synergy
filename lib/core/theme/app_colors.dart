import 'package:flutter/material.dart';

class AppColors {
  // Primary Palette (Soft Pastels)
  static const Color softBlue = Color(0xFFE3F2FD);
  static const Color grassGreen = Color(0xFFE8F5E9);
  static const Color palePink = Color(0xFFFCE4EC);
  static const Color lavender = Color(0xFFF3E5F5);

  // Accent Colors (Interactive & Achievements)
  static const Color primaryBlue = Color(0xFF42A5F5);
  static const Color primaryGreen = Color(0xFF66BB6A);
  static const Color brightYellow = Color(0xFFFFEE58);
  static const Color brightOrange = Color(0xFFFFA726);
  static const Color coral = Color(0xFFFF7043);

  // Backgrounds & Surfaces
  static const Color background = Color(0xFFFAFAFA);
  static const Color cardBackground = Colors.white;
  static const Color scaffoldBackground = Color(0xFFF5F7FA);

  // Status Colors
  static const Color success = Color(0xFF66BB6A);
  static const Color error = Color(0xFFEF5350);
  static const Color warning = Color(0xFFFFA726);
  static const Color info = Color(0xFF29B6F6);

  // Text Colors
  static const Color textPrimary = Color(0xFF2C3E50);
  static const Color textSecondary = Color(0xFF7F8C8D);
  static const Color textLight = Color(0xFFBDC3C7);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryBlue, Color(0xFF90CAF9)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient successGradient = LinearGradient(
    colors: [primaryGreen, Color(0xFFA5D6A7)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
