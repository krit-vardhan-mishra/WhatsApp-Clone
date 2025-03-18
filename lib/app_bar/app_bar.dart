import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String textTitle;
  final List<Widget>? actions;

  const CustomAppBar({super.key, required this.textTitle, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        textTitle ,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),
      ),
      backgroundColor: Color(0xFF3A3737),
      elevation: 20,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
