import 'package:flutter/material.dart';
import 'models/expense.dart';


class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.listOfExpenses});

  final List<Expense> listOfExpenses;

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: listOfExpenses.length,
      itemBuilder: (context, i) => Text(listOfExpenses[i].title),
    );
  }


}