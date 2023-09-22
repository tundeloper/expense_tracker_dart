import 'package:flutter/material.dart';

import 'package:expense_tracker/expenses.dart';

final kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

final kDarkColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));
void main() {
  runApp(
    MaterialApp(
      // darkTheme: ThemeData.dark(useMaterial3: true)
      //     .copyWith(colorScheme: kDarkColorScheme),
      theme: ThemeData(useMaterial3: true).copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer),
          cardTheme: CardTheme(
              color: kColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kColorScheme.primaryContainer)),
          textTheme: const TextTheme().copyWith(
              titleLarge: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 114, 13, 139),
                  fontSize: 17),
              titleMedium: const TextStyle(
                  fontWeight: FontWeight.bold,
                  // color: Color.fromARGB(3, 3, 93, 3),
                  fontSize: 16))),
      home: const Expenses(),
    ),
  );
}
