import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/dialogs/dialogs_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/widgets/widgets_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectecColor: 2).getTheme(),
      home: HomeScreen(),
      routes: {
        '/buttons': (context) => ButtonsScreen(),
        '/cards': (context) => CardsScreen(),
        '/widgets': (context) => WidgetsScreen(),
        '/dialogs': (context) => DialogsScreen(),
      },
    );
  }
}
