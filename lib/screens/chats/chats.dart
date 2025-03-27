import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/acrhives/archived.dart';
import '../../app_bar/app_bar.dart';
import 'chat.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  void openArchive() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ArchivedChats()),
    );
  }

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
      body: ListView.builder(
        padding: EdgeInsets.only(bottom: 50),
        itemCount: 40,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: openArchive,
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.archive, color: Colors.black),
                                SizedBox(width: 10),
                                Text("Archived Chats",
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ),
                            Text("5",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                  )
                ],
              ),
            );
          } else {
            return Chat();
          }
        },
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.small(
            onPressed: () {},
            shape: CircleBorder(),
            elevation: 1,
            child: Icon(Icons.circle, size: 25),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {}, // Correct syntax
            backgroundColor: Colors.white,
            elevation: 1,
            child: Image.asset(
              'assets/icons/whatsapp_chat.png',
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}