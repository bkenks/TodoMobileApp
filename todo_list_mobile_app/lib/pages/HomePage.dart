import 'package:flutter/material.dart';
import 'package:todo_list_mobile_app/util/TodoTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        elevation: 0,
        title: Text("To Do"),
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "Make Tutorial",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
          ToDoTile(
            taskName: "Clean room",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
        ],
      ),
    );
  }
}
