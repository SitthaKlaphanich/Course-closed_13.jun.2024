import 'package:flutter/material.dart';

class VerticalListViewExample extends StatelessWidget {
  const VerticalListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vertical ListView Example'),
      ),
      body: ListView(
        scrollDirection:
            Axis.vertical, // กำหนดทิศทางการเลื่อนเป็นแนวตั้ง (ค่าเริ่มต้น)
        children: <Widget>[
          Container(
            height: 160.0,
            color: Colors.red,
            child: const Center(
              child: Text('Item 1', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            height: 160.0,
            color: Colors.blue,
            child: const Center(
              child: Text('Item 2', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            height: 160.0,
            color: Colors.green,
            child: const Center(
              child: Text('Item 3', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            height: 160.0,
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
