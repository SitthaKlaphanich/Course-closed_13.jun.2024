// -------------------------1 Title : Center widget------------------------------------

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello ครับ'),
//         ),
//         body: Center(
//           // heightFactor: 1,
//           // widthFactor: 1,
//           child: Container(color: Colors.amber, child: Text('Hello')),
//         ),
//       ),
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
//       ),
//     );
//   }
// }

// -------------------------2 Title : Column widget------------------------------------

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Hello ครับ"),
//         ),
//         body: Container(
//           color: Colors.amber,
//           child: const Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             // crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Icon(Icons.book, size: 48),
//               Icon(Icons.book, size: 48),
//               Icon(Icons.book, size: 48),
//             ],
//           ),
//         ),
//       ),
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
//       ),
//     );
//   }
// }

// -------------------------3 Title : Stateful widget------------------------------------

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int counter = 0;

//   void addCounter() {
//     setState(() {
//       counter++;
//     });
//   }

//   void delCounter() {
//     setState(() {
//       counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello ครับ'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 '$counter',
//                 style: TextStyle(fontSize: 24),
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   ElevatedButton(
//                     onPressed: addCounter,
//                     child: Icon(Icons.add),
//                   ),
//                   SizedBox(width: 20),
//                   ElevatedButton(
//                     onPressed: delCounter,
//                     child: Icon(Icons.remove),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
//       ),
//     );
//   }
// }

// -------------------------3 Title : Stateless widget------------------------------------

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Stateless Widget Example',
//       home: CounterDisplay(),
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
//       ),
//     );
//   }
// }

// class CounterDisplay extends StatelessWidget {
//   final int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hello ครับ'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'ค่าของ counter:',
//             ),
//             Text(
//               '$counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
