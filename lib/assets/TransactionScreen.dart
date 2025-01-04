// transaction_history_screen.dart
import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> transactions = [
      {
        'date': '2025-01-01',
        'description': 'Netflix Subscription',
        'amount': '-₵145.00',
        'company': 'Netflix',
        'logo': 'lib/assets/images/netflix_logo.png'
      },
      {
        'date': '2024-12-31',
        'description': 'Payment Received',
        'amount': '+₵1000.00',
        'company': 'MTN',
        'logo': 'lib/assets/images/mtn_logo.png'
      },
      {
        'date': '2024-12-30',
        'description': 'Electricity Bill - Prepaid',
        'amount': '-₵130.00',
        'company': 'ECG',
        'logo': 'lib/assets/images/ecg_logo.png'
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
              leading: Image.asset(
                transactions[index]['logo']!,
                width: 40,
                height: 40,
              ),
              title: Text(transactions[index]['description']!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(transactions[index]['date']!),
                  Text(transactions[index]['company']!),
                ],
              ),
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
