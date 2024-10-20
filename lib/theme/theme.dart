import 'package:flutter/material.dart';

class DoDidDoneTheme {
  static ThemeData get themeData {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF9F7BF6), // #9f7bf6 как основной цвет
        primary: const Color(0xFF9F7BF6),   // #9f7bf6 как основной цвет
        secondary: const Color(0xFF4CEB8B), // #4ceb8b как дополнительный цвет
      ),
      useMaterial3: true,
    );
  }
}
