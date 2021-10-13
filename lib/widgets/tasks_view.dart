import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskdata.tasks[index];
            return TasksTile(
              title: task.name,
              isChecked: task.isDone,
              checkboxState: (checkBoxstate) {
                taskdata.updateTask(task);
              },
              deletetaskcallback: (){
                taskdata.deleteTask(task);
              },
            );
          },
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
          itemCount: taskdata.taskCount,
        );
      },
    );
  }
}
