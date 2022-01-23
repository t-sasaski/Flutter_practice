import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/database.dart';
import 'package:practice/todo.dart';

class ToDoListState extends StateNotifier<List<ToDoRecord>> {
  ToDoListState(List<ToDoRecord> state, this.dbHelper) : super(state);

  final DbHelper dbHelper;

  Future<void> find() async {
    state = await dbHelper.find();
  }

  Future<void> add(ToDo todo) async {
    // 登録後の新しいレコードを取得します
    final record = await dbHelper.add(todo);
    state = state.sublist(0)..insert(0, record);
  }

  Future<void> update(ToDoRecord record) async {
    await dbHelper.update(record.key, record.value);
    _replaceRecord(record);
  }

  Future<void> toggle(ToDoRecord record) async {
    // 現在のarchivedを反転します
    final updateRecord = record.copyWith.value(
      archived: !record.value.archived,
    );
    // ToDoを更新します
    await dbHelper.update(
      updateRecord.key,
      updateRecord.value,
    );

    _replaceRecord(updateRecord);
  }

  void _replaceRecord(ToDoRecord record) {
    // 配列の同じToDoを入れ替えます
    final findIndex = state.indexWhere(
      (e) => e.key == record.key,
    );

    // 新しいリストで更新します
    state = List.from(state)
      ..replaceRange(
        findIndex,
        findIndex + 1,
        [record],
      );
  }
}
