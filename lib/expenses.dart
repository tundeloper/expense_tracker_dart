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
      amount: 20.69,
      date: DateTime.now(),
      category: Category.leisure.toString(),
    ),
  ];

  void _addExpense () {
    Navigator.pushNamed(context, '/newExpense');
    // Navigator.push(context, MaterialPageRoute(builder: (ctx) => const NewExpense()));
  }

  // void _openAddExpenseOverlay() {
  //   showModalBottomSheet(
  //     isScrollControlled: true,
  //     context: context,
  //     builder: (ctx) => const NewExpense(),
  //   );
  // }

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
            height: 50,
            width: 50,
            child: IconButton(
              onPressed: _addExpense,
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
