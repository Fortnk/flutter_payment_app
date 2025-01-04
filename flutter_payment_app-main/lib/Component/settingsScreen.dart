// settings_screen.dart
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Settings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildSettingsOption(
              icon: Icons.lock_reset,
              title: 'Reset Password',
              onTap: () {
                // Navigate to Reset Password Screen
              },
            ),
            const SizedBox(height: 10),
            _buildSettingsOption(
              icon: Icons.color_lens,
              title: 'Change Theme',
              onTap: () {
                // Navigate to Change Theme Screen
              },
            ),
            const SizedBox(height: 10),
            _buildSettingsOption(
              icon: Icons.security,
              title: 'Reset Security Question',
              onTap: () {
                // Navigate to Reset Security Question Screen
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Icon(icon, color: Colors.yellow),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
