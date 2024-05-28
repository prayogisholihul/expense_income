import 'package:expense_income/ext/extension.dart';
import 'package:expense_income/provider/conversion_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/expense_income_model.dart';

class ExpenseItem extends ConsumerStatefulWidget {
  const ExpenseItem({Key, required this.expenseData});

  final ExpenseData expenseData;

  @override
  ConsumerState<ExpenseItem> createState() => _ExpenseItemState();
}

class _ExpenseItemState extends ConsumerState<ExpenseItem> {

  @override
  Widget build(BuildContext context) {
    final direction = ref.watch(conversionDirectionProvider);
    final currencies = ref.watch(getCurrenciesProvider);
    var amount = widget.expenseData.amount;
    var currentConversion = currencies.value?.data.idr.value;
    var converted = amount / (currentConversion ?? 0).toInt();

    String displayedAmount = direction
        ? formatCurrencyUSD(converted)
        : formatCurrency(widget.expenseData.amount);

    return Card(
      color: Theme
          .of(context)
          .cardTheme
          .color,
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
                  displayedAmount,
                  style: widget.expenseData.category == Category.work
                      ? const TextStyle(color: Colors.green)
                      : const TextStyle(color: Colors.red),
                )
                ,
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