import 'package:flutter/material.dart';

class ScrollControllerExample extends StatefulWidget {
  @override
  _ScrollControllerExampleState createState() =>
      _ScrollControllerExampleState();
}

class _ScrollControllerExampleState extends State<ScrollControllerExample> {
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController
        .dispose(); // ต้องทำการ dispose ScrollController เมื่อไม่ได้ใช้งาน
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollController Example'),
      ),
      body: ListView.builder(
        controller:
            _scrollController, // กำหนด ScrollController ให้กับ ListView.builder
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            0, // ตำแหน่งที่จะไป
            duration: Duration(seconds: 1), // ระยะเวลาการเคลื่อนไหว
            curve: Curves.easeInOut, // ลักษณะการเคลื่อนไหว
          );
        },
        child: Icon(Icons.arrow_upward),
      ),
    );
  }
}
