import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class TodoNotifier extends ChangeNotifier {
  var todos = [
    Todo(id: 0, title: "first todo"),
  ];

  void addTodo(String title) {
    todos.add(Todo(id: todos.length, title: title));
    notifyListeners();
  }

  void toggleTaskStatus({required int id}) {
    var todo = todos.firstWhere((element) => element.id == id);
    todo.done = !todo.done; //اذا صح يصير واذا عكس يغير
    notifyListeners();
  }
}
