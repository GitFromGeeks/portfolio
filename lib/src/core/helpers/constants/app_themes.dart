import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

@immutable
class AppThemes {
  const AppThemes._();

  static final mainTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    scaffoldBackgroundColor: bgColor,
    useMaterial3: true,
    textTheme: GoogleFonts.openSansTextTheme()
        .apply(bodyColor: Colors.white)
        .copyWith(
          bodyLarge: const TextStyle(color: bodyTextColor),
          bodyMedium: const TextStyle(color: bodyTextColor),
        ),
  );
}

const primaryColor = Colors.white;
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF000515);
const defaultPadding = 20.0;
