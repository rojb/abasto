import 'dart:ui';

class ColorMethod {
  static Color colorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor'; // agrega opacidad si no está
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
