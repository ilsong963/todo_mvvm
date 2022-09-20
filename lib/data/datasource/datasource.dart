import 'package:hive_flutter/adapters.dart';

import '../model/todo_model.dart';

class DataSource {
  List<Todo> getTodos()  {
    var box = Hive.box<Todo>('Todo');
    return box.values.toList();
  }

  Future<void> setTodos(Todo todoList) async {
    var box = Hive.box<Todo>('Todo');
    box.put('Todo', todoList);
  }
}
