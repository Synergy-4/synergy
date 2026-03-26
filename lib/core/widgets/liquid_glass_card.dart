import 'package:flutter/material.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';

/// A reusable liquid glass container.
///
/// Wraps [child] in a [LiquidGlass] shape with an optional touch glow and
/// organic stretch animation. Place it on top of any content (e.g. an image)
/// for the refraction effect to be visible.
///
/// Example usage:
/// ```dart
/// Stack(
///   children: [
///     Image.asset('assets/backgrounds/nature_park.jpg', fit: BoxFit.cover),
///     Center(
///       child: LiquidGlassCard(
///         child: Padding(
///           padding: EdgeInsets.all(24),
///           child: Text('Hello!'),
///         ),
///       ),
///     ),
///   ],
/// )
/// ```
///
/// ⚠️  Requires Impeller (enabled by default on iOS/macOS).
///      It will NOT render correctly on Web, Windows, or Linux.
class LiquidGlassCard extends StatelessWidget {
  /// The widget to display inside the glass card.
  final Widget child;

  /// Corner radius of the glass shape. Defaults to [28].
  final double borderRadius;

  /// Glass thickness / refraction strength. Higher = more distortion.
  /// Defaults to [18].
  final double thickness;

  /// Background blur radius. Defaults to [12].
  final double blur;

  /// Tint colour of the glass. The alpha channel controls opacity.
  /// Defaults to a very subtle white.
  final Color glassColor;

  /// Saturation multiplier for background pixels visible through the glass.
  /// Values > 1 give a more vivid, Apple-like look. Defaults to [1.3].
  final double saturation;

  /// Intensity of the edge highlight. Defaults to [0.6].
  final double outlineIntensity;

  /// How much the card stretches organically on drag gestures. Set to [0]
  /// to disable the effect. Defaults to [0.3].
  final double stretch;

  /// Whether to show a touch-responsive glow. Defaults to [true].
  final bool enableGlow;

  /// Glow colour used when [enableGlow] is true.
  /// Defaults to [Colors.white24].
  final Color glowColor;

  const LiquidGlassCard({
    super.key,
    required this.child,
    this.borderRadius = 28,
    this.thickness = 18,
    this.blur = 12,
    this.glassColor = const Color(0x28FFFFFF),
    this.saturation = 1.3,
    this.outlineIntensity = 0.6,
    this.stretch = 0.3,
    this.enableGlow = true,
    this.glowColor = Colors.white24,
  });

  @override
  Widget build(BuildContext context) {
    final shape = LiquidRoundedSuperellipse(borderRadius: borderRadius);

    Widget glassChild = enableGlow
        ? GlassGlow(glowColor: glowColor, glowRadius: 1.0, child: child)
        : child;

    Widget glass = LiquidGlassLayer(
      settings: LiquidGlassSettings(
        thickness: thickness,
        blur: blur,
        glassColor: glassColor,
        saturation: saturation,
        // outlineIntensity: outlineIntensity,
      ),
      child: LiquidGlass(shape: shape, child: glassChild),
    );

    if (stretch > 0) {
      glass = LiquidStretch(
        stretch: stretch,
        interactionScale: 1.03,
        child: glass,
      );
    }

    return glass;
  }
}
