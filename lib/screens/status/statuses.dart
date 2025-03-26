import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/status/status.dart';
import '../../app_bar/app_bar.dart';

class Statuses extends StatefulWidget {
  const Statuses({super.key});

  @override
  State<Statuses> createState() => _StatusesState();
}

class _StatusesState extends State<Statuses> {
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
                    'From Status',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ],
              ),
            );
          } else if (index == 1) {
            return Divider();
          } else {
            return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Status()
            );
          }
        },
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 80,
            right: 10,
            child: FloatingActionButton.small(
              onPressed: () {},
              elevation: 1,
              child: Icon(Icons.mode_edit_rounded, size: 15,),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
              onPressed: () => {},
              backgroundColor: Colors.white,
              elevation: 1,
              child: Icon(Icons.linked_camera_rounded, size: 25, color: Colors.black,),
            ),
          ),
        ],
      ),
    );
  }
}
