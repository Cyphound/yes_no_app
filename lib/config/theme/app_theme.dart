
import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF140031);

const List<Color> _colorThemes = [
  _customColor,
  Colors.deepPurple,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.orange,
  Colors.red,
  Colors.pink,
  
];

class AppTheme {
  final int selectedColor;
  final Brightness modo;

  AppTheme({this.selectedColor = 0, this.modo = Brightness.light})
  : assert (selectedColor >= 0 && selectedColor <= _colorThemes.length -1, 
    'selectedColor must be betwen 0 and ${_colorThemes.length -1 }',);

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: modo,
    );
  }

}