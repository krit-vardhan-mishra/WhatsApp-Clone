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
    Chats(),
    Calls(),
    Status(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 80,
            right: 10,
            child: FloatingActionButton.small(
              onPressed: () {},
              shape: CircleBorder(),
              child: Icon(
                Icons.circle,
                size: 25,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
                onPressed: () => {},
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/icons/whatsapp_chat.png',
                  height: 24,
                  width: 24,
                )),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
