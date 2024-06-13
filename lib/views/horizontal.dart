import 'package:flutter/material.dart';

class HorizontalListViewExample extends StatelessWidget {
  const HorizontalListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal ListView Example'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal, // กำหนดทิศทางการเลื่อนเป็นแนวนอน
        children: <Widget>[
          Container(
            width: 160.0,
            color: Colors.red,
            child: const Center(
              child: Text('Item 1', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
            child: const Center(
              child: Text('Item 2', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: 160.0,
            color: Colors.green,
            child: const Center(
              child: Text('Item 3', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
            child: const Center(
              child: Text('Item 4', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
