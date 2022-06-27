import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'add_item.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      title: "To-Do List",
      home: SlidingUpPanel(
        backdropEnabled: true,
        collapsed: Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: border(),
          ),
        ),
        borderRadius: border(),
        color: Colors.green,
        panel: const AddItem(),
        body: Scaffold(
          appBar: AppBar(
            title: const Text(
              'To-Do List',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            actions: const [Icon(size: 30, Icons.search)],
          ),
          body: const Homepage(),
        ),
      ),
    );
  }

  BorderRadius border() {
    return const BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
  }
}
