import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:j1_theme/j1_theme.dart";

class J1ThemeBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, ThemeData theme) builder;

  const J1ThemeBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<J1ThemeBloc, J1ThemeState>(
      builder: (context, state) {
        final colorScheme = state.colorScheme.toMaterial();
        final textTheme = state.textTheme.toMaterial();
        final pageTransition = state.pageTransition.toMaterial();

        return builder(
          context,
          ThemeData(
            brightness: colorScheme.brightness,
            colorScheme: colorScheme,
            textTheme: textTheme,
            pageTransitionsTheme: pageTransition,
            useMaterial3: true,
          ),
        );
      },
    );
  }
}

extension _J1BrightnessExtensions on J1Brightness {
  Brightness toMaterial() {
    return switch (this) {
      J1Brightness.light => Brightness.light,
      _ => Brightness.dark,
    };
  }
}

extension _J1ColorSchemeExtensions on J1ColorScheme {
  ColorScheme toMaterial() {
    return ColorScheme(
      brightness: brightness.toMaterial(),
      primary: Color(primary),
      onPrimary: Color(onPrimary),
      secondary: Color(secondary),
      onSecondary: Color(onSecondary),
      tertiary: Color(tertiary),
      onTertiary: Color(onTertiary),
      error: Color(error),
      onError: Color(onError),
      surface: Color(background),
      surfaceContainer: Color(surface),
      onSurface: Color(onSurface),
    );
  }
}

extension _J1FontWeightExtensions on J1FontWeight {
  FontWeight toMaterial() {
    return switch (this) {
      J1FontWeight.thin => FontWeight.w100,
      J1FontWeight.extraLight => FontWeight.w200,
      J1FontWeight.light => FontWeight.w300,
      J1FontWeight.normal => FontWeight.w400,
      J1FontWeight.medium => FontWeight.w500,
      J1FontWeight.semiBold => FontWeight.w600,
      J1FontWeight.bold => FontWeight.w700,
      J1FontWeight.extraBold => FontWeight.w800,
      J1FontWeight.black => FontWeight.w900,
    };
  }
}

extension _J1TestStyleExtensions on J1TextStyle {
  TextStyle toMaterial() {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      height: height / fontSize,
      fontWeight: fontWeight.toMaterial(),
    );
  }
}

extension _J1TextThemeExtensions on J1TextTheme {
  TextTheme toMaterial() {
    return TextTheme(
      displayLarge: displayLarge.toMaterial(),
      displayMedium: displayMedium.toMaterial(),
      displaySmall: displaySmall.toMaterial(),
      headlineLarge: headlineLarge.toMaterial(),
      headlineMedium: headlineMedium.toMaterial(),
      headlineSmall: headlineSmall.toMaterial(),
      titleLarge: titleLarge.toMaterial(),
      titleMedium: titleMedium.toMaterial(),
      titleSmall: titleSmall.toMaterial(),
      bodyLarge: bodyLarge.toMaterial(),
      bodyMedium: bodyMedium.toMaterial(),
      bodySmall: bodySmall.toMaterial(),
      labelLarge: labelLarge.toMaterial(),
      labelMedium: labelMedium.toMaterial(),
      labelSmall: labelSmall.toMaterial(),
    );
  }
}

extension _J1PageTransitionExtensions on J1PageTransition {
  PageTransitionsTheme toMaterial() {
    final transitionBuilder = switch (this) {
      J1PageTransition.zoom => const ZoomPageTransitionsBuilder(),
      J1PageTransition.cupertino => const CupertinoPageTransitionsBuilder(),
    };

    return PageTransitionsTheme(builders: {
      TargetPlatform.android: transitionBuilder,
      TargetPlatform.iOS: transitionBuilder,
    });
  }
}
