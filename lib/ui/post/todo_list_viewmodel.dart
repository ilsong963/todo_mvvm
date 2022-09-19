import 'package:flutter/material.dart';

import '../../data/model/todo_model.dart';
import '../../data/repository/TodoRepository.dart';

class TodoListViewModel with ChangeNotifier {
  late final TodoRepository _todoRepository;

  List<Todo> get items => _items;
  List<Todo> _items = [];

  TodoListViewModel() {
    _todoRepository = TodoRepository();
    _loadItems();
  }

  Future<void> _loadItems() async {
    _items = await _todoRepository.getTodos();
    notifyListeners();
  }

  Future<void> saveItems(Todo todo) async {
    _items.add(todo);
    _todoRepository.setTodos(_items);
    notifyListeners();
  }
}
