import 'package:flutter/material.dart';
import 'models/expense.dart';


// Project Imports
import 'package:expense_tracker/expenses_list.dart';



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

  @override
  Widget build(BuildContext build){
    return Scaffold(
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(child: ExpensesList(listOfExpenses: _registeredExpenses)),
        ],
      ),
    );
  }
}