import 'package:expense_tracker/expenses_list.dart';
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
    Expense(
        title: 'Flutter Course',
        amount: 19.99,  
        date: DateTime.now(),
        category: Category.work.toString()),
    Expense(
        title: 'Cinema',
        amount: 15.69,
        date: DateTime.now(),
        category: Category.work.toString()),
  ];

  void _openAddExpenseOverlay() {
    showBottomSheet(context: context, builder: (ctx) {
      return const Scaffold(
        body: Column(children: [Text('data')]),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense tracker'),
        actions: [IconButton(onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))],
      ),
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
