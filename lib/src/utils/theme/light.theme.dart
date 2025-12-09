import 'package:flutter/material.dart';

import 'palette.dart';
import 'typography.dart';

final _colorScheme = ColorScheme.fromSeed(
  seedColor: Palette.primary,
  brightness: Brightness.light,
  onSecondary: Colors.black,
  onPrimary: Colors.white,
  surface: Colors.white,
);

final lightTheme = ThemeData(
  colorScheme: _colorScheme,
  scaffoldBackgroundColor: _colorScheme.surface,

  textTheme: createTextTheme(_colorScheme),
  appBarTheme: AppBarTheme(
    foregroundColor: _colorScheme.onPrimary,
    backgroundColor: _colorScheme.surface,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(
        color: _colorScheme.onSurface,
        fontWeight: .bold,
        fontSize: 17,
      ),
      backgroundColor: _colorScheme.onSecondary,
      foregroundColor: _colorScheme.onPrimary,
      minimumSize: const Size.fromHeight(60),
    ),
  ),
);
