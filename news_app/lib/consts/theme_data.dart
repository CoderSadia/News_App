import 'package:flutter/material.dart';
import 'global_colors.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? darkScaffoldColor : lightScaffoldColor,
      primaryColor: isDarkTheme ? darkCardColor : lightCardColor,
      hintColor: isDarkTheme ? Colors.orange: Colors.orange,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: isDarkTheme ? Colors.white : Colors.black,
        selectionColor: Colors.orange,

        // selectionHandleColor: Colors.blue,
      ),
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: isDarkTheme ? Colors.white : Colors.black,
            displayColor: isDarkTheme ? Colors.white : Colors.black,
          ),
      cardColor: isDarkTheme ? darkCardColor : lightCardColor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light, colorScheme: ThemeData().colorScheme.copyWith(
            secondary: isDarkTheme ? darkIconsColor : lightIconsColor,
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ).copyWith(background: isDarkTheme ? darkBackgroundColor : lightBackgroundColor),
    );
  }
}
