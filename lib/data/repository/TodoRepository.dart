import '../datasource/datasource.dart';
import '../model/todo_model.dart';

class TodoRepository {
  final _dataSource = DataSource();

  Future<List<Todo>> getTodos() {
    return _dataSource.getTodos();
  }

  Future<void> setTodos(List<Todo> todoList) {
    return _dataSource.setTodos(todoList);
  }
}
