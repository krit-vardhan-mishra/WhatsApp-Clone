import 'package:flutter/material.dart';
import 'screens/home_screen/home_screen.dart';

void main() => runApp(MainHome());

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      home: CustomHomeScreen(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
