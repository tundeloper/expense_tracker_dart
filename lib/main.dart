import 'package:flutter/material.dart';

import 'package:expense_tracker/expenses.dart';

final kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true).copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: kColorScheme.primaryContainer),
          cardTheme: CardTheme(color: kColorScheme.onPrimaryContainer, margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16))),
      home: const Expenses(),
    ),
  );
}
