import 'package:flutter/material.dart';
import 'TransactionScreen.dart';

class CardServicesScreen extends StatelessWidget {
  const CardServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Services'),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Card Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildServiceCard(
              icon: Icons.sync_alt,
              title: 'Fund Transfer',
              color: Colors.yellow,
              onTap: () {
                // Handle fund transfer
              },
            ),
            const SizedBox(height: 10),
            _buildServiceCard(
              icon: Icons.cancel,
              title: 'Deactivate Card',
              color: Colors.red,
              onTap: () {
                // Handle card deactivation
              },
            ),
            const SizedBox(height: 10),
            _buildServiceCard(
              icon: Icons.history,
              title: 'Transaction History',
              color: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TransactionHistoryScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Icon(icon, color: color),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
