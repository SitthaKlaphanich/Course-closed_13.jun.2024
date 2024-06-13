import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<String> _alphabet = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];
  final Widget _spacer = const SizedBox.square(dimension: 10);
  AxisDirection _axisDirection = AxisDirection.down;

  Widget _getArrows() {
    final Widget arrow;
    switch (_axisDirection) {
      case AxisDirection.up:
        arrow = const Icon(Icons.arrow_upward_rounded);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[arrow, arrow],
        );
      case AxisDirection.down:
        arrow = const Icon(Icons.arrow_downward_rounded);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[arrow, arrow],
        );
      case AxisDirection.left:
        arrow = const Icon(Icons.arrow_back_rounded);
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[arrow, arrow],
        );
      case AxisDirection.right:
        arrow = const Icon(Icons.arrow_forward_rounded);
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[arrow, arrow],
        );
    }
  }

  void _onAxisDirectionChanged(AxisDirection? axisDirection) {
    if (axisDirection != null && axisDirection != _axisDirection) {
      setState(() {
        _axisDirection = axisDirection;
      });
    }
  }

  Widget _getLeading() {
    return Container(
      color: Colors.blue[100],
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(axisDirectionToAxis(_axisDirection).toString()),
          _spacer,
          Text(_axisDirection.toString()),
          _spacer,
          const Text('GrowthDirection.forward'),
          _spacer,
          _getArrows(),
        ],
      ),
    );
  }

  Widget _getRadioRow() {
    return DefaultTextStyle(
      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      child: RadioTheme(
        data: RadioThemeData(
          fillColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Radio<AxisDirection>(
                value: AxisDirection.up,
                groupValue: _axisDirection,
                onChanged: _onAxisDirectionChanged,
              ),
              const Text('up'),
              _spacer,
              Radio<AxisDirection>(
                value: AxisDirection.down,
                groupValue: _axisDirection,
                onChanged: _onAxisDirectionChanged,
              ),
              const Text('down'),
              _spacer,
              Radio<AxisDirection>(
                value: AxisDirection.left,
                groupValue: _axisDirection,
                onChanged: _onAxisDirectionChanged,
              ),
              const Text('left'),
              _spacer,
              Radio<AxisDirection>(
                value: AxisDirection.right,
                groupValue: _axisDirection,
                onChanged: _onAxisDirectionChanged,
              ),
              const Text('right'),
              _spacer,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AxisDirections'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _getRadioRow(),
          ),
        ),
      ),
      body: CustomScrollView(
        reverse: axisDirectionIsReversed(_axisDirection),
        scrollDirection: axisDirectionToAxis(_axisDirection),
        slivers: <Widget>[
          SliverList.builder(
            itemCount: 27,
            itemBuilder: (BuildContext context, int index) {
              final Widget child;
              if (index == 0) {
                child = _getLeading();
              } else {
                child = Container(
                  color: index.isEven ? Colors.amber[100] : Colors.amberAccent,
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text(_alphabet[index - 1])),
                );
              }
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: child,
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context); // ย้อนกลับไปยังหน้าหลัก (MainPage)
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
