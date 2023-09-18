import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/new_expense.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Accommodation',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work.toString(),
    ),
    Expense(
      title: 'Groceries',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure.toString(),
    ),
    Expense(
      title: 'Book',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure.toString(),
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  // void _addExpense (Expense expense) {
    
  //   _registeredExpenses.add(expense);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          SizedBox(
            height: 100,
            width: 100,
            child: IconButton(
              onPressed: _openAddExpenseOverlay,
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
