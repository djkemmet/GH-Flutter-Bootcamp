import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget{
  NewExpense({super.key});

  @override
  State<NewExpense> createState(){
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
var _enteredTitle = '';

void _saveTitleInput(String InputValue) {
  _enteredTitle = InputValue;
}
  @override
  Widget build(BuildContext context){
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: _saveTitleInput,
            maxLength: 50,
            decoration: const InputDecoration(label:Text("Expense Name")),
          ),
          Row(children:[
            ElevatedButton(onPressed: (){print(_enteredTitle);}, child: const Text("Save Expense"))
          ])
        ]
      ),
    );
  }
}