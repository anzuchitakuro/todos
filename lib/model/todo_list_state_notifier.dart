import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todos/model/todo.dart';

final todoListProvider =
    StateNotifierProvider<TodoListStateNotifier, List<Todo>>((ref) {
  return TodoListStateNotifier(const [
    Todo(id: 'todo-0', description: 'hi'),
    Todo(id: 'todo-1', description: 'hello'),
    Todo(id: 'todo-2', description: 'bonjour'),
  ]);
});

class TodoListStateNotifier extends StateNotifier<List<Todo>> {
  TodoListStateNotifier([List<Todo>? initialTodos]) : super(initialTodos ?? []);
}
