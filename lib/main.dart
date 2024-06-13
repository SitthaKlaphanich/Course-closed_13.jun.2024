import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/axisDirections.dart';
import 'package:flutter_application_2/views/doubleclass.dart';
import 'package:flutter_application_2/views/edgeInsetsgeometry.dart';
import 'package:flutter_application_2/views/ItemExtentBuilder.dart';
import 'package:flutter_application_2/views/ScrollPhysics.dart';
import 'package:flutter_application_2/views/horizontal.dart';
import 'package:flutter_application_2/views/intclass.dart';
import 'package:flutter_application_2/views/listviewbuilder.dart';
import 'package:flutter_application_2/views/localKey.dart';
import 'package:flutter_application_2/views/listview.dart';
import 'package:flutter_application_2/views/scrollcontroller.dart';
import 'package:flutter_application_2/views/textDirection.dart';
import 'package:flutter_application_2/views/vertical.dart';
import 'package:flutter_application_2/views/widgetclass.dart';
import 'package:flutter_application_2/views/GlobalKey.dart';
import 'package:flutter_application_2/views/ListWidget.dart';

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
        title: Text('Main Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildButton(
                context,
                'ListView',
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListViewPage()))),
            _buildButton(
                context,
                'ListView LocalKey',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListViewLocalKey()))),
            _buildButton(
                context,
                'ListView GlobalKey',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListviewGlobalKey()))),
            _buildButton(
                context,
                'AxisDirection',
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyWidget()))),
            _buildButton(
                context,
                'TextDirection',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextDirectionExample()))),
            _buildButton(
                context,
                'Vertical',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const VerticalListViewExample()))),
            _buildButton(
                context,
                'Horizontal',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const HorizontalListViewExample()))),
            _buildButton(
                context,
                'ScrollController',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ScrollControllerExample()))),
            _buildButton(
                context,
                'ScrollPhysics',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScrollPhysicsExample()))),
            _buildButton(
                context,
                'EdgeInsetsGeometry',
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const edge()))),
            _buildButton(
                context,
                'double',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const doubleclass()))),
            _buildButton(
                context,
                'ItemExtentBuilder',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Itemextentbuilder()))),
            _buildButton(
                context,
                'Widget',
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyCustomWidget()))),
            _buildButton(
                context,
                'ListWidget',
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListWidget()))),
            _buildButton(
                context,
                'int',
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => intclass()))),
            _buildButton(
                context,
                'ListViewbuilder',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListViewbuilder()))),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
