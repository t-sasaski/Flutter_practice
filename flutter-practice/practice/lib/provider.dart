import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/database.dart';
import 'package:practice/todo.dart';
import 'package:practice/todo_list_state.dart';

// 初期値はなく、使う時までにオーバーライドします
final databaseProvider = Provider<DbHelper>(
  (_) => throw UnimplementedError(),
);

final todoListProvider = StateNotifierProvider<ToDoListState, List<ToDoRecord>>(
  (ref) => ToDoListState(
    [],
    ref.read(databaseProvider),
  ),
);
