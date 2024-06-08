import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_app/route.dart';
import 'package:stock_app/view/screen/homepage.dart';
import 'package:stock_app/view/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                  color: Color.fromRGBO(229, 229, 229, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
              bodyLarge: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              bodyMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
              bodySmall: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700)),
          colorScheme: const ColorScheme.dark(
              background: Color.fromRGBO(33, 33, 33, 1),
              onTertiary: Color.fromRGBO(71, 119, 84, 1),
              tertiary: Color.fromRGBO(76, 76, 76, 1),
              onSecondaryContainer: Color.fromRGBO(65, 65, 65, 1),
              onBackground: Color.fromRGBO(33, 33, 33, 1),
              primary: Color.fromRGBO(41, 36, 25, 1),
              secondary: Color.fromRGBO(62, 69, 94, 1),
              onSecondary: Color.fromRGBO(96, 91, 78, 1),
              onPrimary: Color.fromRGBO(51, 51, 51, 1))),
      theme: ThemeData(
          textTheme: TextTheme(
              displayLarge: const TextStyle(
                  color: Color.fromRGBO(26, 26, 26, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
              bodyLarge: const TextStyle(
                  color: Color.fromRGBO(26, 26, 26, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
              bodyMedium:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              bodySmall: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 16,
                  fontWeight: FontWeight.w700)),
          colorScheme: const ColorScheme.light(
              background: Colors.white,
              onTertiary: Color.fromRGBO(138, 234, 165, 1),
              tertiary: Color.fromRGBO(248, 160, 132, 1),
              onSecondaryContainer: Color.fromRGBO(241, 241, 241, 1),
              onBackground: Color.fromRGBO(33, 33, 33, 1),
              primary: Color.fromRGBO(247, 215, 134, 1),
              secondary: Color.fromRGBO(80, 98, 162, 1),
              onSecondary: Color.fromRGBO(255, 242, 209, 1),
              onPrimary: Color.fromRGBO(223, 230, 253, 1))),
      home: const Homepage(),
      getPages: getPages,
    );
  }
}
