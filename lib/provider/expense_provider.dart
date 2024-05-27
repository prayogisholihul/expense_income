import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/expense_income_model.dart';
import '../repository.dart';

part 'expense_provider.g.dart';

@riverpod
Repository repository(RepositoryRef ref) {
  return Repository();
}

@riverpod
Future<int> insertExpense(InsertExpenseRef ref, ExpenseData expense) async {
  final repository = ref.read(repositoryProvider);
  return await repository.insert(expense);
}

@riverpod
Future<List<ExpenseData>> getAllExpenses(GetAllExpensesRef ref) async {
  final repository = ref.read(repositoryProvider);
  return await repository.getAll();
}

@riverpod
Future<int> deleteExpense(DeleteExpenseRef ref, int id) async {
  final repository = ref.read(repositoryProvider);
  return await repository.delete(id);
}

@riverpod
Future<int> updateExpense(UpdateExpenseRef ref, ExpenseData expense) async {
  final repository = ref.read(repositoryProvider);
  return await repository.update(expense);
}
