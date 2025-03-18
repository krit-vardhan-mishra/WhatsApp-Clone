import 'package:flutter/material.dart';
import '../../app_bar/app_bar.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        textTitle: 'WhatsApp',
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
                  'From Chats',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                for (int i = 0; i < 40; i++)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Text('Item $i', style: TextStyle(color: Colors.white)),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
