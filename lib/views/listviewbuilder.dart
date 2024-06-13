import 'package:flutter/material.dart';

class ListViewbuilder extends StatelessWidget {
  final List<String> items = List.generate(50, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              print('Tapped on ${items[index]}');
            },
          );
        },
      ),
    );
  }
}
