import 'package:flutter/material.dart';

class ArchivedChats extends StatefulWidget {
  const ArchivedChats({super.key});

  @override
  _ArchivedChatsState createState() => _ArchivedChatsState();
}

class _ArchivedChatsState extends State<ArchivedChats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Archived Chats'),
        elevation: 0,
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.black),
            highlightColor: Colors.white60,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "These chats stay archived when new messages are received. Tap to change",
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
                itemCount: 40,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text("Archived Chat Item"),
                    subtitle: Text("Last message preview..."),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
