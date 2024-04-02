import 'package:flutter/material.dart';
import 'models/expense.dart';



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
    return const Scaffold(
      body: Column(
        children: [
          Text('The Chart'),
          Text('The Expenses'),
        ],
      ),
    );
  }
}