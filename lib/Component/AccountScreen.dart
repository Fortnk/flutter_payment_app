import 'package:flutter/material.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> accounts = [
      {'name': 'FF19 & Co. - Savings Account', 'number': '1234567890'},
      {'name': 'FF19 & Co. - Current Account', 'number': '0987654321'},
      {'name': 'FF19 & Co. - Business Account', 'number': '1122334455'},
      {'name': 'FF19 & Co.', 'number': '6677889900'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Linked Accounts'),
      ),
      body: ListView.builder(
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: const Icon(Icons.account_balance, color: Colors.yellow),
              title: Text(accounts[index]['name']!),
              subtitle: Text('Account Number: ${accounts[index]['number']}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountDetailScreen(
                      accountName: accounts[index]['name']!,
                      accountNumber: accounts[index]['number']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class AccountDetailScreen extends StatelessWidget {
  final String accountName;
  final String accountNumber;

  const AccountDetailScreen({
    required this.accountName,
    required this.accountNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(accountName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account Name: $accountName',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Account Number: $accountNumber',
              style: const TextStyle(fontSize: 18),
            ),
            // Add more account details here
          ],
        ),
      ),
    );
  }
}
