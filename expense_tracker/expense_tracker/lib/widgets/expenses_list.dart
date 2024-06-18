import 'package:flutter/material.dart';
import '../models/expense.dart';

//Project Imports
import 'package:expense_tracker/widgets/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.listOfExpenses,
    required this.onRemoveExpense,
  });

  final List<Expense> listOfExpenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfExpenses.length,
      itemBuilder: (context, i) => Dismissible(
          key: ValueKey(listOfExpenses[i]),
          onDismissed: (direction) {
            onRemoveExpense(listOfExpenses[i]);
          },
          child: ExpenseItem(listOfExpenses[i])),
    );
  }
}
