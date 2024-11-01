import 'package:flutter/material.dart';
import 'package:expense_track/models/expense.dart';

class ExpensesItem extends StatelessWidget{
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title, style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 4),
            Row(children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),  //toStringAsFixed means that 24.34567 = 24.34, two digits after point
              const Spacer(),  // by using this spacer we will create a space between the Text and the Row Widget
              Row(children: [
                Icon(categoryIcons[expense.category]),
                const SizedBox(width: 8),
                Text(expense.formattedDate),
              ],),
            ],)
          ],
        ),
      ),
    );
  }
}