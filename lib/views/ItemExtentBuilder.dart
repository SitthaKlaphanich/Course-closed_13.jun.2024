import 'package:flutter/material.dart';

class Itemextentbuilder extends StatelessWidget {
  final List<String> items = List.generate(50, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ItemExtentBuilder ListView'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemExtent: 80.0, // ความสูงของแต่ละ item ใน ListView
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
