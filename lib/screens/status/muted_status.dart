import 'package:flutter/material.dart';

class MutedStatus extends StatefulWidget {
  const MutedStatus({super.key});

  @override
  State<MutedStatus> createState() => _MutedStatusState();
}

class _MutedStatusState extends State<MutedStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      height: 120,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
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
            child: Icon(Icons.volume_mute_outlined, color: Colors.white, size: 20),
          ),
        )
      ]),
    );
  }
}
