import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {

  final bool isChecked;
  final String title;
  final Function(bool?) checkboxState;
  final Function()? deletetaskcallback;
  TasksTile({required this.isChecked,required this.title,required this.checkboxState,required this.deletetaskcallback});


  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxState,
      ),
      onLongPress: deletetaskcallback,
    );
  }
}

