import 'package:flutter/material.dart';
import 'package:whatsapp_clone/nav_bar/nav_bar.dart';
import '../chats/chats.dart';
import '../calls/calls.dart';
import '../status/statuses.dart';

class CustomHomeScreen extends StatefulWidget {
  const CustomHomeScreen({super.key});

  @override
  _CustomHomeScreenState createState() => _CustomHomeScreenState();
}

class _CustomHomeScreenState extends State<CustomHomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = [
    const Chats(),
    const Calls(),
    const Statuses(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
