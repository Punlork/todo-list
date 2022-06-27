import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  const Items({
    Key? key,
    required this.task,
    required this.priority,
  }) : super(key: key);

  final String task;
  final String priority;

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.task,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pinkAccent.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Text(
                  widget.priority,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.pink[200]),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 70,
          ),
          const Icon(
            Icons.edit,
          ),
          const Icon(Icons.delete)
        ],
      ),
    );
  }
}
