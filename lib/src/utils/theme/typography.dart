import 'package:flutter/material.dart';

/// Creates a [TextTheme] using the Outfit font family, adapting text colors
/// based on the provided [colorScheme].
TextTheme createTextTheme(ColorScheme colorScheme) {
  return TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 57,
      fontWeight: .w400, // Regular
      color: colorScheme.onSurface,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 45,
      fontWeight: .w400,
      color: colorScheme.onSurface,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 36,
      fontWeight: .w400,
      color: colorScheme.onSurface,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 39,
      fontWeight: .bold, // Bold
      color: colorScheme.onSurface,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 28,
      fontWeight: .w700,
      color: colorScheme.onSurface,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 24,
      fontWeight: .w700,
      color: colorScheme.onSurface,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 22,
      fontWeight: .w500, // Medium
      color: colorScheme.onSurface,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 16,
      fontWeight: .w500,
      color: colorScheme.onSurface,
    ),
    titleSmall: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 14,
      fontWeight: .w500,
      color: colorScheme.onSurface,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 20,
      fontWeight: .w400,
      color: colorScheme.onSurface,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 14,
      fontWeight: .w400,
      color: colorScheme.onSurface,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 12,
      fontWeight: .w400,
      color: colorScheme.onSurface,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 14,
      fontWeight: .w500,
      color: colorScheme.onSurface,
    ),
    labelMedium: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 12,
      fontWeight: .w500,
      color: colorScheme.onSurface,
    ),
    labelSmall: TextStyle(
      fontFamily: 'Outfit',
      fontSize: 11,
      fontWeight: .w500,
      color: colorScheme.onSurface,
    ),
  );
}
