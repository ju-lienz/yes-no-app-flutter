import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';

/* Redo the Yes No App application, from Fernando Herrera's Flutter
course, to reinforce Flutter knowledge.*/

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second: Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2)
          .theme(), // .theme() is the  method that gets the theme
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {},
            child: const Text("Click me"),
          ),
        ),
      ),
    );
  }
}
