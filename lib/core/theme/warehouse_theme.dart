import 'package:flutter/material.dart';
import 'package:warehouse/core/theme/warehouse_colors.dart';

class WarehouseTheme {
  static TextTheme lightTextTheme = _commonTextTheme(color: Colors.black);
  static TextTheme darkTextTheme = _commonTextTheme(color: Colors.white);
  Color color = Color.fromARGB(255, 48, 96, 172);
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: const Color.fromARGB(255, 233, 146, 47),
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.black)),
      appBarTheme: AppBarTheme(
        // backgroundColor: Color.fromARGB(255, 239, 140, 26),
        backgroundColor: Color(0xFF131921),
        foregroundColor: Colors.white,
        // backgroundColor: Color(0xFFf4aeff),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(255, 223, 133, 30),
        foregroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme:
            IconThemeData(color: Color.fromARGB(255, 223, 133, 30)),
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: WareHouseColor.primary,
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith(
              (states) => WareHouseColor.primary)),
      appBarTheme: AppBarTheme(
        // backgroundColor: Colors.grey[900],
        backgroundColor: Color.fromARGB(255, 239, 140, 26),
        foregroundColor: Color(0xFF111111),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(255, 223, 133, 30),
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme:
            IconThemeData(color: Color.fromARGB(255, 223, 133, 30)),
      ),
      switchTheme: SwitchThemeData(
          thumbColor: MaterialStateColor.resolveWith((states) => Colors.black),
          trackColor: MaterialStateColor.resolveWith(
              (states) => Colors.black.withOpacity(0.5))),
      textTheme: darkTextTheme,
    );
  }
}

TextTheme _commonTextTheme({required Color color}) {
  return TextTheme(
    bodyLarge:
        TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700, color: color),
    bodyMedium: TextStyle(
        color: color.withOpacity(0.7),
        fontSize: 20,
        fontWeight: FontWeight.w600),
    displayLarge:
        TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: color),
    displayMedium:
        TextStyle(fontSize: 21.0, fontWeight: FontWeight.w700, color: color),
    displaySmall:
        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: color),
    titleLarge:
        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: color),
  );
}
