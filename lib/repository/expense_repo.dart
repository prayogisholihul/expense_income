import 'package:expense_income/source/local_storage.dart';
import 'package:sqflite/sqflite.dart';

import '../model/expense_income_model.dart';

class Repository {

  Future<int> insert(ExpenseData expense) async {
    final db = await ExpenseDB.instance.database;
    return await db.insert(
      ExpenseDbType.tableName,
      expense.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<ExpenseData>> getAll() async {
    final db = await ExpenseDB.instance.database;
    const orderLatest = '${ExpenseDbType.createdData} DESC';
    final data = await db.query(ExpenseDbType.tableName, orderBy: orderLatest);
    return data.map((item) => ExpenseData.fromMap(item)).toList();
  }

  Future<int> delete(int id) async {
    final db = await ExpenseDB.instance.database;
    return await db.delete(ExpenseDbType.tableName,
        where: '${ExpenseDbType.id} = ?', whereArgs: [id]);
  }

  Future<int> update(ExpenseData expense) async {
    final db = await ExpenseDB.instance.database;
    return await db.update(ExpenseDbType.tableName, expense.toMap(),
        where: '${ExpenseDbType.id} = ?',
        whereArgs: [expense.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}