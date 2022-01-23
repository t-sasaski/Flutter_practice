import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:practice/todo.dart';

// todosからデータを取得します
class DbHelper {
  // 通常のコンストラクタを追加します
  DbHelper();

  // プライベートな名前付きコンストラクタです
  DbHelper._();

  // このクラスの同一インスタンスを返します
  @Deprecated('not user')
  static DbHelper get instance => _instance;

  // 初回の呼び出しでインスタンスを生成します
  static final DbHelper _instance = DbHelper._();

  // プライベートなDatabaseインスタンスです
  late final Database _database;

  // 実施にデータを保存するためのインスタンスです
  late final StoreRef<int, Map<String, dynamic>> _store;

  Future<void> initialize() async {
    // データベースの保存先を取得します
    final appDir = await getApplicationDocumentsDirectory();

    // データベースを開きます
    _database = await databaseFactoryIo.openDatabase(
      join(appDir.path, 'todo.db'),
    );

    // データを保存する領域を確保します
    _store = intMapStoreFactory.store('todo');
  }

  /// todosからデータを取得します
  Future<List<ToDoRecord>> find() async {
    final result = await _store.find(
      _database,
      finder: Finder(
        sortOrders: [SortOrder(Field.key, false)],
      ),
    );
    return result
        .map(
          (e) => ToDoRecord(
            e.key,
            ToDo.fromJson(e.value),
          ),
        )
        .toList();
  }

  /// テーブルに新しいToDoを追加します
  Future<ToDoRecord> add(ToDo todo) async {
    final key = await _store.add(_database, todo.toJson());
    return ToDoRecord(key, todo);
  }

  // ToDoを更新します
  Future<void> update(int key, ToDo todo) async {
    _store.record(key).put(_database, todo.toJson());
  }
}
