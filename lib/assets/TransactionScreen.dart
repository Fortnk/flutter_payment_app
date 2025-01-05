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
        actions: [
          ElevatedButton(
            onPressed: () {
              // Add your refresh logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, // Change button color to black
              shadowColor: Colors.black.withOpacity(0.5),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Icon(
              Icons.refresh,
              color: Color.fromRGBO(242, 200, 54, 1), // Change icon color
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black, // Change card color to black
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            elevation: 5, // Add shadow to the box
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Image.asset(
                transactions[index]['logo']!,
                width: 40,
                height: 40,
              ),
              title: Text(
                transactions[index]['description']!,
                style: const TextStyle(
                  color: Color.fromRGBO(242, 200, 54, 1), // Change text color
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactions[index]['date']!,
                    style: const TextStyle(
                      color:
                          Color.fromRGBO(242, 200, 54, 1), // Change text color
                    ),
                  ),
                  Text(
                    transactions[index]['company']!,
                    style: const TextStyle(
                      color:
                          Color.fromRGBO(242, 200, 54, 1), // Change text color
                    ),
                  ),
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
