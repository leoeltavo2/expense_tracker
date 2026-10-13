import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Icon(categoryIcons[expense.category]),
                        const SizedBox(width: 4),
                        Text(expense.category.name),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        const SizedBox(width: 4),
                        Text(expense.formattedDate),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
