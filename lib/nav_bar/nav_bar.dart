import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const NavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped, // Notify HomeScreen of tab change
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/whatsapp_status.png',
              height: 25, width: 25),
          label: "Status",
        ),
      ],
    );
  }
}
