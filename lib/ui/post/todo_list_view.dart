import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_mvvm/ui/post/todo_list_viewmodel.dart';

import '../../data/model/todo_model.dart';

class TodoListView extends StatelessWidget {
  late TodoListViewModel viewModel;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    viewModel = Provider.of<TodoListViewModel>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    title: Text('add'),
                    content: TextField(controller: myController),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            viewModel.saveItems(
                                Todo(myController.text, DateTime.now()));
                            myController.clear();
                            Navigator.of(context).pop();
                          },
                          child: Text('추가')),
                    ],
                  )),
          child: Text('+')),
      appBar: AppBar(title: Text('Todo List')),
      body: _buildPostList(),
    );
  }

  Widget _buildPostList() {
    final items = viewModel.items; // viewModel에 저장된 items
    final itemCount = items.length;
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(title: Text(item.title));
      },
      itemCount: itemCount,
    );
  }
}
