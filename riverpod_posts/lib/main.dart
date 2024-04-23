import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class Todo {
  final int id;
  final String title;
  final String description;

  Todo({
    required this.id,
    required this.title,
    required this.description,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      title: json['title'],
      description: json['description'],
    );
  }
}


final todoListProvider = FutureProvider<List<Todo>>((ref) async {
  final response = await http.get(Uri.parse('https://demo2140905.mockable.io/todos'));
  if (response.statusCode == 200) {
    return (jsonDecode(response.body) as List)
        .map((e) => Todo.fromJson(e as Map<String, dynamic>))
        .toList();
  } else {
    throw Exception('Failed to load todos');
  }
});

void main() {
  runApp(ProviderScope(child: MaterialApp(home: TodoListScreen())));
}

class TodoListScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef watch) {
    final todosAsyncValue = watch(todoListProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: todosAsyncValue.when(
        data: (todos) => ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            final todo = todos[index];
            return ListTile(
              title: Text(todo.title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TodoDetailScreen(todo: todo),
                  ),
                );
              },
            );
          },
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}

class TodoDetailScreen extends StatelessWidget {
  final Todo todo;

  TodoDetailScreen({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(todo.title)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description, style: TextStyle(fontSize: 18.0)),
      ),
    );
  }
}
