import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses ({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _reqisteredExpenses = [
    Expense(title: 'Flutter course', amount: 19.99, date: DateTime.now(), category: Category.work),
    Expense(title: 'Beer', amount: 12.50, date: DateTime.now(), category: Category.leisure),
  ];

  _openAddExpeneOverlay() {
    // ctx means context
    showModalBottomSheet(context: context, builder: (ctx) => const NewExpense(),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense tracker'),
        actions: [
          IconButton(onPressed: _openAddExpeneOverlay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
      children: [
        Text('The cart'), 
        Expanded(child: ExpensesList(expenses: _reqisteredExpenses))
      ],
    ),);
  }

}