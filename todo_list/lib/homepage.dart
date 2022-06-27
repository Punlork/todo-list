import 'package:flutter/material.dart';
import 'items.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String text = 'First';
    int counter = 1;
    return Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.greenAccent.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListView.builder(
        itemBuilder: (context, i) {
          return const Items(task: text, priority: 'high');
        },
        itemCount: 2,
      ),
    );
  }
}
