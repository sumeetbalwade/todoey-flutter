import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/NewTask.dart';
import 'package:todoey_flutter/widgets/TaskData.dart';

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskdata, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return NewTask(
              task: Provider.of<TaskData>(context).listoftask[index].task,
              isChecked:
                  Provider.of<TaskData>(context).listoftask[index].isDone,
              checkboxchanging: (bool checkboxstate) {
                taskdata.updateTask(taskdata.listoftask[index]);
              },
              longpresscallback: () {
                taskdata.deletetask(taskdata.listoftask[index]);
              });
        },
        itemCount: Provider.of<TaskData>(context).listoftask.length,
      );
    });
  }
}
