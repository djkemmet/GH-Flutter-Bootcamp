import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.onAddExpense});

  final void Function(Expense expense) onAddExpense;

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  // Class Properties - State Tracked.
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  Category _selectedCategory = Category.leisure;

  // Class Functions - Functions that help drive this widget and
  // transact state.
  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(1500, 1, 1);
    final lastDate = DateTime(now.year, now.month, now.day);

    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: lastDate);

    setState(() {
      _selectedDate = pickedDate;
    });
  }

  void _submitExpense() {
    final enteredAmount = double.tryParse(_amountController.text);
    final amountIsInvalid = enteredAmount == null || enteredAmount <= 0;
    if (_titleController.text.trim().isEmpty ||
        amountIsInvalid ||
        _selectedDate == null) {
      //Show Error Message
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
            title: const Text("Invalid Input"),
            content: const Text(
                "Please make sure a valid title, amount, date, and category was entered."),
            actions: [
              TextButton(
                child: const Text('Okay'),
                onPressed: () {
                  Navigator.pop(ctx);
                },
              ),
            ]),
      );
      return;
    } // ENDS IF CHECK FOR INVALID DATA.
    widget.onAddExpense(
      Expense(
          title: _titleController.text,
          amount: enteredAmount,
          date: _selectedDate!,
          category: _selectedCategory),
    );
    Navigator.of(context).pop();
  }

// Class Overrides - Using the Flutter Framework.
  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;

    return LayoutBuilder(builder: (ctx, constraints) {
      print(constraints.minHeight);
      print(constraints.maxHeight);
      print(constraints.minWidth);
      final width = constraints.maxWidth;

      return SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, keyboardSpace + 16),
            child: Column(children: [
              if (width >= 600)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _titleController,
                        maxLength: 50,
                        decoration:
                            const InputDecoration(label: Text("Expense Name")),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: TextField(
                        keyboardType: const TextInputType.numberWithOptions(),
                        controller: _amountController,
                        decoration: const InputDecoration(
                          label: Text("Amount"),
                          prefixText: '\$',
                        ),
                      ),
                    )
                  ],
                )
              else
                TextField(
                  controller: _titleController,
                  maxLength: 50,
                  decoration:
                      const InputDecoration(label: Text("Expense Name")),
                ),
              if (width >= 600)
                Row(children: [
                  DropdownButton(
                    value: _selectedCategory,
                    items: Category.values
                        .map(
                          (category) => DropdownMenuItem(
                            value: category,
                            child: Text(category.name.toUpperCase()),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (value == null) {
                        return;
                      } else {
                        setState(() {
                          _selectedCategory = value;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 24.0),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(_selectedDate == null
                            ? "No Date Selected"
                            : formatter.format(_selectedDate!)),
                        IconButton(
                          icon: const Icon(Icons.calendar_month),
                          onPressed: _presentDatePicker,
                        )
                      ],
                    ),
                  ),
                ])
              else
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: const TextInputType.numberWithOptions(),
                        controller: _amountController,
                        decoration: const InputDecoration(
                          label: Text("Amount"),
                          prefixText: '\$',
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(_selectedDate == null
                              ? "No Date Selected"
                              : formatter.format(_selectedDate!)),
                          IconButton(
                            icon: const Icon(Icons.calendar_month),
                            onPressed: _presentDatePicker,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              Row(children: [
                const Text("Category: "),
                DropdownButton(
                  value: _selectedCategory,
                  items: Category.values
                      .map(
                        (category) => DropdownMenuItem(
                          value: category,
                          child: Text(category.name.toUpperCase()),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value == null) {
                      return;
                    } else {
                      setState(() {
                        _selectedCategory = value;
                      });
                    }
                  },
                ),
                const Spacer(),
                ElevatedButton(
                    onPressed: _submitExpense,
                    child: const Text(
                      "Save Expense",
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Close"))
              ])
            ]),
          ),
        ),
      );
    });
  }
}
