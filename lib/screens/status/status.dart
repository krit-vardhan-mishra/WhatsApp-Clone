import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      height: 120,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.greenAccent, borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Icon(
            Icons.account_circle_rounded,
            color: Colors.white,
            size: 60,
          ),
        ],
      ),
    );
  }
}
