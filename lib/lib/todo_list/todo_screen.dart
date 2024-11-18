import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<Todo> _todos = [
    Todo(text: 'Update attendence.', checked: false),
    Todo(text: 'Check new mails.', checked: false),
    Todo(text: 'Take remaining Class-Tests', checked: false),
    Todo(text: 'Review the papers.', checked: false),
    Todo(text: 'Check the books availability.', checked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Opacity(
              opacity: _todos[index].checked ? 0.3 : 1,
              child: Text(_todos[index].text),
            ),
            value: _todos[index].checked,
            onChanged: (value) {
              setState(() {
                _todos[index].checked = value!;
              });
            },
          );
        },
      ),
    );
  }
}

class Todo {
  String text;
  bool checked;

  Todo({required this.text, required this.checked});
}
