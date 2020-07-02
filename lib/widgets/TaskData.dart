import 'package:flutter/material.dart';

import 'taskfile.dart';

class TaskData extends ChangeNotifier {
  List<Task> listoftask = [];

  void addTask(String newTaskTitle) {
    final task = Task(task: newTaskTitle);
    listoftask.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggledone();
    notifyListeners();
  }

  void deletetask(Task task){
    listoftask.remove(task);
    notifyListeners();
  }
}
