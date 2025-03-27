import 'package:flutter/material.dart';

class YourStatus extends StatefulWidget {
  const YourStatus({super.key});

  @override
  State<YourStatus> createState() => _YourStatusState();
}

class _YourStatusState extends State<YourStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      height: 120,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.greenAccent, borderRadius: BorderRadius.circular(10)),
      child: Stack(children: [
        Icon(
          Icons.account_circle_rounded,
          color: Colors.white,
          size: 60,
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration:
                BoxDecoration(color: Colors.transparent, shape: BoxShape.circle),
            child: Icon(Icons.add_circle_outline, color: Colors.blue, size: 20),
          ),
        )
      ]),
    );
  }
}
