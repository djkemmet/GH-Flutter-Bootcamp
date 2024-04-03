import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget{
  NewExpense({super.key});

  @override
  State<NewExpense> createState(){
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {

final _titleController  = TextEditingController();
final _amountController = TextEditingController();

@override
void dispose(){
  _titleController.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context){
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label:Text("Expense Name")),
          ),
          TextField(
            keyboardType: TextInputType.numberWithOptions(),
            controller: _amountController,
            decoration: const InputDecoration(label: Text("Amount")),
          ),
          Row(children:[
            ElevatedButton(onPressed: (){print(_titleController.text);print(_amountController.text);}, child: const Text("Save Expense")),
            ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child:Text("Close"))
          ])
        ]
      ),
    );
  }
}