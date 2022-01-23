import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice/provider.dart';
import 'package:practice/todo.dart';

class ToDoInputView extends HookConsumerWidget {
  const ToDoInputView({
    Key? key,
    this.record,
  }) : super(key: key);

  final ToDoRecord? record;

  /// ToDoInputViewを表示する静的メソッドです
  static Future<void> show(
    BuildContext context, {
    ToDoRecord? record,
  }) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => ToDoInputView(record: record),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useTextEditingController(
      text: record?.value.title,
    );

    final _todosListNotifier = ref.read(
      todoListProvider.notifier,
    );

    return Padding(
      padding: EdgeInsets.only(
        // キーボードが表示された分、下から押し上げます
        bottom: MediaQuery.of(context).viewInsets.bottom,
        // 画面両端に余白を設けます
        right: 10,
        left: 10,
      ),
      child: Column(
        // TextFieldの高さに合わせます
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            // 入力値の変更を外部インスタンスで制御できるようにします
            controller: _controller,
            // 画面表示時にフォーカスします
            autofocus: true,
            // キーボードでdone[完了]したらこの画面を閉じます
            onEditingComplete: () async {
              if (_controller.text.isEmpty) {
                return;
              }

              if (record == null) {
                await _todosListNotifier.add(
                  ToDo(title: _controller.text),
                );
              } else {
                // ToDoのtitleを更新します
                final updatedToDo = record!.value.copyWith(
                  title: _controller.text,
                );

                // 新しいToDoRecordとToDoで更新します
                await _todosListNotifier.update(
                  record!.copyWith(
                    value: updatedToDo,
                  ),
                );
              }

              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              // TextFieldの下線を消します
              border: InputBorder.none,
              // 未入力時に表示するテキストです
              hintText: 'ToDoのタイトルを入力します',
            ),
          ),
        ],
      ),
    );
  }
}
