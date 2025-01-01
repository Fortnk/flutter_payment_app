import 'package:flutter/material.dart';

class PayBillsScreen extends StatelessWidget {
  const PayBillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pay Bills'),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pay Bills',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildBillOption(
              icon: Icons.phone_android,
              title: 'Mobile Recharge',
              color: Colors.blue,
              onTap: () {
                // Handle Mobile Recharge
              },
            ),
            const SizedBox(height: 10),
            _buildBillOption(
              icon: Icons.tv,
              title: 'TV Subscription',
              color: Colors.orange,
              onTap: () {
                // Handle TV Subscription
              },
            ),
            const SizedBox(height: 10),
            _buildBillOption(
              icon: Icons.account_balance_wallet,
              title: 'Self Transfer',
              color: Colors.green,
              onTap: () {
                // Handle Self Transfer
              },
            ),
            const SizedBox(height: 10),
            _buildBillOption(
              icon: Icons.lightbulb,
              title: 'Electricity',
              color: Colors.yellow,
              onTap: () {
                // Handle Electricity
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBillOption({
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
