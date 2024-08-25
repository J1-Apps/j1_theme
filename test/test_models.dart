import "package:flutter/material.dart";
import "package:j1_theme/j1_theme.dart";
import "package:mocktail/mocktail.dart";

class MockThemeRepository extends Mock implements J1ThemeRepository {}

final testColorSchemeBlack = J1ColorScheme(
  brightness: J1Brightness.dark,
  primary: Colors.black.value,
  onPrimary: Colors.black.value,
  secondary: Colors.black.value,
  onSecondary: Colors.black.value,
  tertiary: Colors.black.value,
  onTertiary: Colors.black.value,
  error: Colors.black.value,
  onError: Colors.black.value,
  surface: Colors.black.value,
  onSurface: Colors.black.value,
  background: Colors.black.value,
);

final testColorSchemeWhite = J1ColorScheme(
  brightness: J1Brightness.light,
  primary: Colors.white.value,
  onPrimary: Colors.white.value,
  secondary: Colors.white.value,
  onSecondary: Colors.white.value,
  tertiary: Colors.white.value,
  onTertiary: Colors.white.value,
  error: Colors.white.value,
  onError: Colors.white.value,
  surface: Colors.white.value,
  onSurface: Colors.white.value,
  background: Colors.white.value,
);

const testTextThemeRoboto = J1TextTheme(
  displayLarge: J1TextStyle.displayLarge(fontFamily: "roboto"),
  displayMedium: J1TextStyle.displayMedium(fontFamily: "roboto"),
  displaySmall: J1TextStyle.displaySmall(fontFamily: "roboto"),
  headlineLarge: J1TextStyle.headlineLarge(fontFamily: "roboto"),
  headlineMedium: J1TextStyle.headlineMedium(fontFamily: "roboto"),
  headlineSmall: J1TextStyle.headlineSmall(fontFamily: "roboto"),
  titleLarge: J1TextStyle.titleLarge(fontFamily: "roboto"),
  titleMedium: J1TextStyle.titleMedium(fontFamily: "roboto"),
  titleSmall: J1TextStyle.titleSmall(fontFamily: "roboto"),
  bodyLarge: J1TextStyle.bodyLarge(fontFamily: "roboto"),
  bodyMedium: J1TextStyle.bodyMedium(fontFamily: "roboto"),
  bodySmall: J1TextStyle.bodySmall(fontFamily: "roboto"),
  labelLarge: J1TextStyle.labelLarge(fontFamily: "roboto"),
  labelMedium: J1TextStyle.labelMedium(fontFamily: "roboto"),
  labelSmall: J1TextStyle.labelSmall(fontFamily: "roboto"),
);

const testTextThemeArial = J1TextTheme(
  displayLarge: J1TextStyle.displayLarge(fontFamily: "arial", fontWeight: J1FontWeight.thin),
  displayMedium: J1TextStyle.displayMedium(fontFamily: "arial", fontWeight: J1FontWeight.extraLight),
  displaySmall: J1TextStyle.displaySmall(fontFamily: "arial", fontWeight: J1FontWeight.light),
  headlineLarge: J1TextStyle.headlineLarge(fontFamily: "arial"),
  headlineMedium: J1TextStyle.headlineMedium(fontFamily: "arial", fontWeight: J1FontWeight.medium),
  headlineSmall: J1TextStyle.headlineSmall(fontFamily: "arial", fontWeight: J1FontWeight.semiBold),
  titleLarge: J1TextStyle.titleLarge(fontFamily: "arial", fontWeight: J1FontWeight.bold),
  titleMedium: J1TextStyle.titleMedium(fontFamily: "arial", fontWeight: J1FontWeight.extraBold),
  titleSmall: J1TextStyle.titleSmall(fontFamily: "arial", fontWeight: J1FontWeight.black),
  bodyLarge: J1TextStyle.bodyLarge(fontFamily: "arial"),
  bodyMedium: J1TextStyle.bodyMedium(fontFamily: "arial"),
  bodySmall: J1TextStyle.bodySmall(fontFamily: "arial"),
  labelLarge: J1TextStyle.labelLarge(fontFamily: "arial"),
  labelMedium: J1TextStyle.labelMedium(fontFamily: "arial"),
  labelSmall: J1TextStyle.labelSmall(fontFamily: "arial"),
);
