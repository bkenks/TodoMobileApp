import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  // reference our box
  final myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void CreateInitialData() {
    todoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  void LoadData() {
    todoList = myBox.get("TODOLIST");
  }

  void UpdateDatabase() {
    myBox.put("TODOLIST", todoList);
  }
}
