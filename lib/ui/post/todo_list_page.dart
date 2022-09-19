import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todo_mvvm/ui/post/todo_list_view.dart';
import 'package:todo_mvvm/ui/post/todo_list_viewmodel.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoListViewModel>(
        create: (_) => TodoListViewModel(), child: TodoListView());
  }
}
