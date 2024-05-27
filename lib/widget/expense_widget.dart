import 'package:expense_income/ext/extension.dart';
import 'package:flutter/material.dart';

import '../model/expense_income_model.dart';

class ExpenseItem extends StatefulWidget {
  const ExpenseItem({Key, required this.expenseData});

  final ExpenseData expenseData;

  @override
  State<ExpenseItem> createState() => _ExpenseItemState();
}

class _ExpenseItemState extends State<ExpenseItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardTheme.color,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          children: [
            Text(
              widget.expenseData.title,
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatCurrency(widget.expenseData.amount),
                  style: widget.expenseData.category == Category.work ? const TextStyle(color: Colors.green) : const TextStyle(color: Colors.red),
                ),
                Row(
                  children: [
                    Icon(categoryIcons[widget.expenseData.category]),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(widget.expenseData.formattedDate,
                        style: const TextStyle(color: Colors.black))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}