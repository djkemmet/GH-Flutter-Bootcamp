import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:flutter/material.dart';
import 'models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';


class Expenses extends StatefulWidget{
  const Expenses({super.key});

  @override
  State<Expenses> createState(){
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work
    ),
    Expense(
      title: 'Movie',
      amount: 15.99,
      date: DateTime.now(),
      category: Category.leisure
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(context: context, builder: (ctx){
      return NewExpense();
      
    });
  }

  @override
  Widget build(BuildContext build){
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(icon: const Icon(Icons.add), onPressed: _openAddExpenseOverlay,)
        ],
      ),
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(child: ExpensesList(listOfExpenses: _registeredExpenses))
        ],
      ),
    );
  }
}