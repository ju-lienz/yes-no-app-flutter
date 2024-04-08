import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: FilledButton.tonal(
              onPressed: () {}, child: const Text("Click me")),
        ),
      ),
    );
  }
}
