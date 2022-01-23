import 'package:flutter/material.dart';
import 'package:practice/database.dart';
import 'package:practice/todo.dart';

class ToDoInput extends StatefulWidget {
  @Deprecated('use ToDoInputView')
  const ToDoInput({Key? key}) : super(key: key);

  // このインスタンスを表示する静的メソッドです
  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => const ToDoInput(),
    );
  }

  @override
  _ToDoInputState createState() => _ToDoInputState();
}

class _ToDoInputState extends State<ToDoInput> {
  // TextFieldの初期値や入力値を取得するために使います
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        // キーボードが表示された文、下から押し上げます
        bottom: MediaQuery.of(context).viewInsets.bottom,
        // 画面両端に余白を設けます
        right: 10,
        left: 10,
      ),
      child: Column(
        // Textfieldの高さに合わせます
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            // 入力値の変更を外部インスタンスで制御できるようにします
            controller: _textController,
            // 画面表示時にフォーカスします
            autofocus: true,
            // キーボードでdone(完了)したらこの画面を閉じます
            onEditingComplete: () {
              if (_textController.text.isNotEmpty) {
                // 入力値があればToDoを追加します
                DbHelper.instance.add(
                  ToDo(title: _textController.text),
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
