import '../datasource/datasource.dart';
import '../model/todo_model.dart';

class TodoRepository {
  final _dataSource = DataSource();

 List<Todo> getTodos()  {
    return  _dataSource.getTodos();
  }

  Future<void> setTodos(Todo todo) {
    return _dataSource.setTodos(todo);
  }
}
