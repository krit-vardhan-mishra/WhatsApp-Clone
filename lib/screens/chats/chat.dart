import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.blue[100],
          border: Border.all(color: Colors.black26, width: 1)),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Icon(Icons.account_circle_rounded, size: 50, color: Colors.black),
        SizedBox(
          width: 10,
        ),
        Text(
          'Item From Chat',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ]),
    );
  }
}
