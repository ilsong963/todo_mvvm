import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_mvvm/ui/post/todo_list_page.dart';

import 'data/model/todo_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter()); // add here
  await Hive.openBox<Todo>('Todo');

  runApp(const MaterialApp(home: const TodoListPage()));
}
