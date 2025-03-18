import 'package:flutter/material.dart';
import '../../app_bar/app_bar.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        textTitle: "Status",
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            highlightColor: Colors.white60,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
            highlightColor: Colors.white60,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.white),
            highlightColor: Colors.white60,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black38,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text.rich(
                  TextSpan(text: 'My', children: [
                    TextSpan(
                        text: 'Flutter',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange[200])),
                    TextSpan(
                        text: 'App',
                        style:
                            TextStyle(fontSize: 30.0, color: Colors.redAccent)),
                  ]),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'From Status',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
