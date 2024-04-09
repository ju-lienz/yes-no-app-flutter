import 'package:flutter/material.dart';

/* Private variables can only be used in the file where they were defined. */
const Color _customColor = Color(0XFF49149f); // Custom color
const List<Color> _colorThemes = [
  _customColor,
  Colors.teal,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.yellow,
  Colors.deepOrange,
];

class AppTheme {
  final int selectedColor;
// theme is expecting a themeData
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}'); // [0] default color
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark, // Dark mode enabled
    );
  }
}
