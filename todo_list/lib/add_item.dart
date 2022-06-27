import 'package:flutter/material.dart';
import 'homepage.dart';
import 'items.dart';

class AddItem extends StatefulWidget {
  const AddItem({
    Key? key,
  }) : super(key: key);

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  TextEditingController nameItem = TextEditingController();
  TextEditingController priorityItem = TextEditingController();
  String item = '';
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          addItemField('Add Items'),
          // addItemField('Add Priority'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // saveDelBtn(const Icon(Icons.delete_rounded), 'Delete'),
              // const SizedBox(
              //   width: 50,
              // ),
              saveDelBtn(const Icon(Icons.save), 'Save'),
              const SizedBox(
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector saveDelBtn(Icon icon, String name) {
    return GestureDetector(
      onTap: () => saveItem(),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.green,
          ),
        ),
        child: Row(
          children: [
            IconButton(
              icon: icon,
              onPressed: () => saveItem(),
              iconSize: 30,
            ),
            Text(name),
          ],
        ),
      ),
    );
  }

  Container addItemField(String name) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.green,
        ),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(20),
      child: TextField(
        controller: nameItem,
        decoration: InputDecoration(
          labelText: name,
        ),
      ),
    );
  }

  void saveItem() {
    setState(() {
      counter++;
    });

    item = nameItem.text;
    print(item);
  }
}
