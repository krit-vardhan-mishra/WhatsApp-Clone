import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/status/status.dart';
import 'package:whatsapp_clone/screens/status/your_status.dart';
import '../../app_bar/app_bar.dart';
import 'channels/channels.dart';
import 'muted_status.dart';

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
            icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
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
        padding: EdgeInsets.only(bottom: 20),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 140, width: 100, child: YourStatus()),
                  SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      height: 140,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          if (index == 9) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: MutedStatus(),
                            );
                          }
                          return Status();
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            );
          } else if (index == 1) {
            return Divider();
          } else {
            return Channels();
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
              child: Icon(Icons.mode_edit_rounded, size: 15),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              elevation: 1,
              child: Icon(Icons.linked_camera_rounded,
                  size: 25, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
