// scan_pay_screen.dart
import 'package:flutter/material.dart';

class ScanPayScreen extends StatelessWidget {
  const ScanPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan & Pay'),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/QR_Code_Scan.webp',
              height: size.height * 0.3,
              width: size.height * 0.3,
            ),
            const SizedBox(height: 20),
            const Text(
              'Quick and Easy Steps',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              '1. Open the app and select Scan & Pay.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '2. Align the QR code within the frame.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              '3. Confirm the payment details and proceed.',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add functionality to handle scanning
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Scan'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
