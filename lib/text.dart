// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key key, this.choice, @required this.item}) : super(key: key);

//   final Choice choice;
//   final Choice item;

//   @override
//   MyAppState createState() => MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(title: Text('Basic demo')),
//       body: Container(
//           child: CarouselSlider(
//         options: CarouselOptions(
//           disableCenter: false,
//         ),
//         items: choices
//             .map((Choice) => Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Card(
//                         child: Container(
//                           child: Column(
//                             children: [
//                               Text(
//                                 Choice.title,
//                                 style: null,
//                                 textAlign: TextAlign.left,
//                               ),
//                               Text(
//                                 Choice.content,
//                                 style: null,
//                                 textAlign: TextAlign.left,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Card(
//                         child: Container(
//                           child: Column(
//                             children: [
//                               Text(
//                                 Choice.title,
//                                 style: null,
//                                 textAlign: TextAlign.left,
//                               ),
//                               Text(
//                                 Choice.content,
//                                 style: null,
//                                 textAlign: TextAlign.left,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   color: Colors.green,
//                 ))
//             .toList(),
//       )),
//     ));
//   }
// }

// class Choice {
//   const Choice({this.title, this.content});

//   final String title;

//   final String content;
// }

// const List<Choice> choices = const <Choice>[
//   const Choice(title: 'title : 1', content: 'content : 1'),
//   const Choice(title: 'title : 2', content: 'content : 2'),
//   const Choice(title: 'title : 3', content: 'content : 3'),
//   const Choice(title: 'title : 4', content: 'content : 4'),
