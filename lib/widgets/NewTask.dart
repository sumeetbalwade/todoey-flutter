import 'package:flutter/material.dart';

class NewTask extends StatelessWidget {
  final String task;
  final bool isChecked;
  final Function checkboxchanging;
  final Function longpresscallback;

  NewTask(
      {this.task,
      this.isChecked,
      this.checkboxchanging,
      this.longpresscallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpresscallback,
      title: Text(
        task,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxchanging,
      ),
    );
  }
}
