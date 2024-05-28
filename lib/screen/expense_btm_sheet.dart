import 'package:expense_income/ext/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/expense_income_model.dart';
import '../provider/expense_provider.dart';

class ExpenseAddBtmSheet extends ConsumerStatefulWidget {
  const ExpenseAddBtmSheet({
    super.key,
    this.expenseData,
  });

  final ExpenseData? expenseData;

  @override
  ConsumerState<ExpenseAddBtmSheet> createState() => _ExpenseAddBtmSheetState();
}

class _ExpenseAddBtmSheetState extends ConsumerState<ExpenseAddBtmSheet> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  Category? _selectedCategory;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    if (widget.expenseData != null) {
      _titleController.text = widget.expenseData!.title;
      _amountController.text = widget.expenseData!.amount.toString();
      _selectedDate = widget.expenseData!.date;
      _selectedCategory = widget.expenseData!.category;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void pickDate() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 5, now.month, now.day);
    final lastDate = DateTime(now.year + 5, now.month, now.day);
    final initialDate = _selectedDate ?? DateTime.now();

    final date = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );
    if (date != null) {
      setState(() {
        _selectedDate = date;
      });
    }
  }

  void submit() {
    if (_titleController.text.trim().isNotEmpty &&
        _amountController.text.trim().isNotEmpty &&
        _selectedDate != null &&
        _selectedCategory != null) {
      final data = ExpenseData(
          id: widget.expenseData?.id,
          title: _titleController.text.trim(),
          amount: int.parse(_amountController.text),
          date: _selectedDate!,
          category: _selectedCategory!);

      if (widget.expenseData != null) {
        ref.read(updateExpenseProvider(data).future);
      } else {
        ref.read(insertExpenseProvider(data).future);
      }

      ref.refresh(getAllExpensesProvider);
      Navigator.pop(context);
    } else {
      showMessageDialog(context, 'Incomplete Data', 'Check Again!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: _amountController,
                  decoration: const InputDecoration(
                      label: Text('Amount'), prefix: Text('\Rp. ')),
                ),
              ),
              InkWell(
                onTap: pickDate,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(_selectedDate == null
                        ? 'No Date Selected'
                        : formatter.format(_selectedDate!)),
                    const SizedBox(
                      width: 12,
                    ),
                    const Icon(Icons.date_range)
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          DropdownButton<Category>(
            hint: const Text('Category'),
            value: _selectedCategory,
            items: Category.values
                .map((category) => DropdownMenuItem(
              value: category,
              child: Text(category.name),
            ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedCategory = value;
              });
            },
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(onPressed: submit, child: const Text('Save'))
            ],
          )
        ],
      ),
    );
  }
}