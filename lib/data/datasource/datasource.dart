import 'package:hive_flutter/adapters.dart';

import '../model/todo_model.dart';

class DataSource {
  Future<List<Todo>> getTodos() async {
    final box = Hive.box('todo');

    return box.get('todoList', defaultValue: <Todo>[]);
  }

  Future<void> setTodos(List<Todo> todoList) async {
    final box = Hive.box('todo');
    box.put('todoList', todoList);
  }
}
