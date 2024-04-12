import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

/* Redo the Yes No App application, from Fernando Herrera's Flutter
course, to reinforce Flutter knowledge.*/

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      /* creates the provider globally in the application since it uses
      it in the main.dart */
      providers: [
        ChangeNotifierProvider(
          create: (context) => ChatProvider(), // creating chatProvider instance
        ),
      ],
      child: MaterialApp(
        title: 'Second: Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 2)
            .theme(), // .theme() is the  method that gets the theme
        home: const ChatScreen(),
      ),
    );
  }
}
