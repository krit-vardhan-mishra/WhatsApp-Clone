import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls/call.dart';
import '../../app_bar/app_bar.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        textTitle: 'Call Log',
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_ic_call_outlined,
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
      body: ListView.builder(
        itemCount: 40,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Center(
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
                          style: TextStyle(
                              fontSize: 30.0, color: Colors.redAccent)),
                    ]),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'From Calls',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ],
              ),
            );
          } else if (index == 1) {
            return Divider();
          } else {
            return Padding(padding: const EdgeInsets.all(10.0), child: Call());
          }
        },
      ),
    );
  }
}
