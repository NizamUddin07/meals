import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals/categories.dart';

final theme= ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Color.fromARGB(255,131,57,0),
  ),
  textTheme: GoogleFonts.latoTextTheme()
);

void main() =>runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: CategoriesScreen(),

    );
  }
}
