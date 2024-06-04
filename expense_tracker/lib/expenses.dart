import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Groceries',
        amount: 50.0,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Taxi',
        amount: 30.0,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        title: 'Movie',
        amount: 20.0,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Laptop',
        amount: 1000.0,
        date: DateTime.now(),
        category: Category.work),
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Text('The chart'), Text('Expanse List...')],
      ),
    );
  }
}
