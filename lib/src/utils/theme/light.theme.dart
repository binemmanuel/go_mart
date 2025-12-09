import 'package:flutter/material.dart';

import 'button.text.style.dart';
import 'palette.dart';
import 'typography.dart';

final _colorScheme = ColorScheme.fromSeed(
  surface: const Color(0xFFEFF1F3),
  seedColor: Palette.primary,
  brightness: Brightness.light,
  onSecondary: Colors.black,
  onPrimary: Colors.white,
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
      textStyle: buttonTextStyle.copyWith(color: _colorScheme.onSurface),
      backgroundColor: _colorScheme.onSecondary,
      foregroundColor: _colorScheme.onPrimary,
      minimumSize: const Size.fromHeight(60),
    ),
  ),

  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(backgroundColor: Colors.black),
  ),
);
