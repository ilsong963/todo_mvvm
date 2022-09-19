import 'package:hive/hive.dart';

part 'todo_model.g.dart';

@HiveType(typeId: 1)
class Todo {
  Todo(this.title, this.createdAt);

  @HiveField(0)
  String title;
  @HiveField(1)
  DateTime createdAt;

  Todo.fromJson(Map<String, dynamic> json, this.title, this.createdAt) {
    title = json['title'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> todo = <String, dynamic>{};
    todo['title'] = title;
    todo['createdAt'] = createdAt;
    return todo;
  }
}
