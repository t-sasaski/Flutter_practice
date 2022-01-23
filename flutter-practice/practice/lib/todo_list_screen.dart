import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice/provider.dart';
import 'package:practice/todo_input.dart';
import 'package:practice/todo.dart';
import 'package:practice/todo_input_view.dart';

class ToDoListScreen extends HookConsumerWidget {
  const ToDoListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ToDoListStateに変更があるとリビルドされます
    final _todos = ref.watch(todoListProvider);
    // ToDoListStateのメソッドを使えるようにします
    final _todoNtoifier = ref.read(todoListProvider.notifier);

    // buildが呼ばれてからToDoリストを読み込みます
    useEffect(() {
      _todoNtoifier.find();
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo'),
      ),
      body: ListView.builder(
        // ListTileからCheckedListTileに変更します
        itemBuilder: (context, index) => CheckboxListTile(
          onChanged: (checked) {
            _todoNtoifier.toggle(_todos[index]);
          },
          value: _todos[index].value.archived,
          title: GestureDetector(
            child: Text(_todos[index].value.title),
            onTap: () {
              ToDoInputView.show(
                context,
                record: _todos[index],
              );
            },
          ),
        ),
        itemCount: _todos.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ToDoInputView.show(context);
        },
      ),
    );
  }
}
