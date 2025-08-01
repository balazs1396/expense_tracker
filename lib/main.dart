import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

final kColorScheme = ColorScheme.fromSeed(seedColor: Colors.lightBlue);

var kDarkColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent, brightness: Brightness.dark);

final appTheme = ThemeData().copyWith(
  colorScheme: kColorScheme,
  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: kColorScheme.onPrimaryContainer,
    foregroundColor: kColorScheme.primaryContainer,
    
  ),
  cardTheme: const CardTheme().copyWith(
    color: kColorScheme.secondaryContainer,
    margin: const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    )
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
    backgroundColor: kColorScheme.primaryContainer
  )),
  textTheme: ThemeData().textTheme.copyWith(
    titleLarge: TextStyle(fontWeight: FontWeight.normal, color: kColorScheme.onSecondaryContainer, fontSize: 14)
  )
);

final darkTheme = ThemeData.dark().copyWith(
  colorScheme: kDarkColorScheme,
);

void main() {
  runApp(MaterialApp(home: Expenses(), theme: appTheme, darkTheme: darkTheme,));
}
