import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:practice/main.dart' as app;

void main() {

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('test main', (tester) async {
    app.main();

    // 起動が遅いときにDurationを調整します
    await tester.pumpAndSettle(
      const Duration(milliseconds: 500),
    );
    expect(find.text('ToDo'), findsOneWidget);
    expect(
      find.byType(FloatingActionButton),
      findsOneWidget,
    );

    // ToDoの追加ボタンをタップします
    await tester.tap(
      find.byType(FloatingActionButton),
    );

    // 次の画面が出るまで待機します
    await tester.pumpAndSettle();

    // 新しいToDoを追加します
    await tester.enterText(
      find.byType(TextField),
      'ToDo 1',
    );
    await tester.pumpAndSettle();

    // 追加したToDoがリスト上にあることを検証します
    expect(
      find.text('ToDo 1'),
      findsOneWidget,
    );
  
  });
}



