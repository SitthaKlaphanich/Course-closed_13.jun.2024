import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/GlobalKey.dart';
import 'package:flutter_application_2/views/TextDirection.dart';
import 'package:flutter_application_2/views/axisDirections.dart';
import 'package:flutter_application_2/views/edgeInsetsgeometry.dart';
import 'package:flutter_application_2/views/ScrollPhysics.dart';
import 'package:flutter_application_2/views/horizontal.dart';
import 'package:flutter_application_2/views/localKey.dart';
import 'package:flutter_application_2/views/listview.dart';
import 'package:flutter_application_2/views/scrollcontroller.dart';
import 'package:flutter_application_2/views/vertical.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewPage()),
                );
              },
              child: const Text('ListView'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewLocalKey()),
                );
              },
              child: const Text('ListView LocalKey'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListviewGlobalKey()),
                );
              },
              child: const Text('ListView GlobalKey'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWidget()),
                );
              },
              child: const Text('AxisDirection'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextDirectionExample()),
                );
              },
              child: const Text('TextDirection'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VerticalListViewExample()),
                );
              },
              child: const Text('vertical '),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HorizontalListViewExample()),
                );
              },
              child: const Text('horizontal'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScrollControllerExample()),
                );
              },
              child: const Text('ScrollController'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScrollPhysicsExample()),
                );
              },
              child: const Text('ScrollPhysics'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => edge()),
                );
              },
              child: const Text('EdgeInsetsGeometry'),
            ),
          ],
        ),
      ),
    );
  }
}
