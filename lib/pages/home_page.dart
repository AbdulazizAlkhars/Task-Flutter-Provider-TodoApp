import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/widgets/todo_tile.dart';
import 'package:todo_app/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Todo"),
          backgroundColor: Colors.amber.shade300,
          actions: [
            IconButton(
              onPressed: () => GoRouter.of(context).push('/add'),
              icon: const Icon(
                Icons.add_box_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: context.watch<TodoNotifier>().todos.length,
            itemBuilder: (context, index) {
              return TodoTile(todo: context.watch<TodoNotifier>().todos[index]);
            }));
  }
}
