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
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Favourite Call",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.account_circle_rounded,
                          size: 50, color: Colors.black),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Favourite Chat Call",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.ac_unit_sharp, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Recent",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          } else {
            return Call();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.white,
        elevation: 1,
        child: Icon(
          Icons.add_ic_call_sharp,
          color: Colors.black,
        ),
      ),
    );
  }
}
