import 'package:flutter/material.dart';

class Stateful_page extends StatefulWidget {
  const Stateful_page({super.key});

  @override
  State<Stateful_page> createState() => _Stateful_pageState();
}

class _Stateful_pageState extends State<Stateful_page> {
  int counter = 0;

  void addCounter() {
    setState(() {
      counter++;
    });
  }

  void delCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello ครับ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: addCounter,
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: delCounter,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
