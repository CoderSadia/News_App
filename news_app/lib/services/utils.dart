import 'package:flutter/material.dart';
import 'package:news_app/providers/theme_provider.dart';

import 'package:provider/provider.dart';

class Utils {
  BuildContext context;
  Utils(this.context);

  Size get getScreenSize => MediaQuery.of(context).size;
  bool get getTheme => Provider.of<ThemeProvider>(context).getDarkTheme;
  Color get getColor => getTheme ? Colors.white : Colors.black;

  Color get baseShimmerColor =>
      getTheme ? Colors.orange.shade500 : Colors.orange.shade200;

  Color get highlightShimmerColor => getTheme ? Colors.orange : Colors.orange;

  Color get widgetShimmerColor =>
      getTheme ? Colors.orange.shade600 : Colors.orange.shade100;
}
