import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    // สร้าง Widgets จากรายการ items
    for (String item in items) {
      widgetList.add(
        ListTile(
          title: Text(item),
          onTap: () {
            // โค้ดที่ต้องการเมื่อคลิกที่ ListTile
            print('Tapped on $item');
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('List of Widgets Example'),
      ),
      body: ListView(
        children: widgetList, // แสดง Widgets จาก widgetList ใน ListView
      ),
    );
  }
}
