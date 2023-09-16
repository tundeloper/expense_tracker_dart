import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _EpensesState();
  }
}

class _EpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Flutter Course', amount: 19.99, date: DateTime.now(), category: Category.work.toString()),
    Expense(title: 'Cinema', amount: 15.69, date: DateTime.now(), category: Category.work.toString()),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('The chart'),
          Text('Expens list...'),
        ],
      ),
    );
  }
}