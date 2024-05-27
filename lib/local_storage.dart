import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'model/expense_income_model.dart';

class ExpenseDB {
  static final ExpenseDB instance = ExpenseDB._internal();
  static Database? _database;

  ExpenseDB._internal();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'Expensedb.db');

    return await openDatabase(path, version: 1, onCreate: _createDb);
  }

  Future<void> _createDb(Database db, _) async {
    return await db.execute('''
CREATE TABLE ${ExpenseDbType.tableName}(
  ${ExpenseDbType.id} ${ExpenseDbType.idType},
  ${ExpenseDbType.title} ${ExpenseDbType.textType},
  ${ExpenseDbType.amount} ${ExpenseDbType.intType},
  ${ExpenseDbType.date} ${ExpenseDbType.textType},
  ${ExpenseDbType.category} ${ExpenseDbType.textType},
  ${ExpenseDbType.createdData} ${ExpenseDbType.intType}
)
''');
  }

  Future<void> close() async {
    final db = await instance.database;
    return db.close();
  }
}