// transaction_history_screen.dart
import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> transactions = [
      {
        'date': '2025-01-01',
        'description': 'Paid to XYZ Store',
        'amount': '-\$50.00'
      },
      {
        'date': '2024-12-31',
        'description': 'Salary Credited',
        'amount': '+\$1000.00'
      },
      {
        'date': '2024-12-30',
        'description': 'Electricity Bill',
        'amount': '-\$30.00'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: Icon(
                transactions[index]['amount']!.startsWith('+')
                    ? Icons.arrow_downward
                    : Icons.arrow_upward,
                color: transactions[index]['amount']!.startsWith('+')
                    ? Colors.green
                    : Colors.red,
              ),
              title: Text(transactions[index]['description']!),
              subtitle: Text(transactions[index]['date']!),
              trailing: Text(
                transactions[index]['amount']!,
                style: TextStyle(
                  color: transactions[index]['amount']!.startsWith('+')
                      ? Colors.green
                      : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
