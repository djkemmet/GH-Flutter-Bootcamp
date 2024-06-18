import 'package:flutter/material.dart';

import 'expenses.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData().copyWith(
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.red,
        ),
        home: const Expenses()),
  );
}
