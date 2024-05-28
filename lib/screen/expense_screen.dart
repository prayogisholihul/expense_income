import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/expense_income_model.dart';
import '../provider/conversion_provider.dart';
import '../provider/expense_provider.dart';
import '../widget/expense_widget.dart';
import 'expense_btm_sheet.dart';

class ExpenseScreen extends ConsumerWidget {
  const ExpenseScreen({super.key});

  void bottomSheet(BuildContext context, WidgetRef ref, ExpenseData? expense) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (_, controller) {
            return SingleChildScrollView(
              controller: controller,
              child: ExpenseAddBtmSheet(
                expenseData: expense,
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expensesAsyncValue = ref.watch(getAllExpensesProvider);
    final direction = ref.watch(conversionDirectionProvider);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Expense Tracker',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          actions: [
            const Text('IDR'),
            Switch(
                value: direction,
                onChanged: (isActive) {
                  ref.read(conversionDirectionProvider.notifier)
                      .toggleDirection();
                }),
            const Text('USD'),
            const SizedBox(width: 12,)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bottomSheet(context, ref, null);
          },
          child: const Icon(Icons.add),
        ),
        body: expensesAsyncValue.when(
          data: (expenses) {
            if (expenses.isEmpty) {
              return const Center(child: Text('Empty Data'));
            }
            return ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (ctx, idx) => Dismissible(
                key: Key(expenses[idx].id.toString()),
                direction: DismissDirection.endToStart,
                background: Card(
                  color: Colors.red,
                  child: Container(
                      margin: const EdgeInsets.only(right: 30),
                      alignment: Alignment.centerRight,
                      child: const Icon(
                        Icons.delete,
                      )),
                ),
                onDismissed: (direction) {
                  ref.read(deleteExpenseProvider(expenses[idx].id!));
                  expenses.removeAt(idx);
                  ref.refresh(getAllExpensesProvider);
                },
                child: InkWell(
                  onTap: () {
                    bottomSheet(context, ref, expenses[idx]);
                  },
                  child: ExpenseItem(
                    expenseData: expenses[idx],
                  ),
                ),
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text('Error: $error')),
        ));
  }
}
