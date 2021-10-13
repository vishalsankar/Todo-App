import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskTile extends StatefulWidget {
  @override
  State<AddTaskTile> createState() => _AddTaskTileState();
}

class _AddTaskTileState extends State<AddTaskTile> {
  late String TaskName;

  final mycontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
              child: Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.lightBlueAccent),
              ),
            ),
            TextField(
              controller: mycontroller,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              style:  ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)),
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).addTask(mycontroller.text);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
