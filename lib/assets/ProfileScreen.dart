import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'johndoe@example.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            _buildProfileOption(
              icon: Icons.shopping_bag,
              title: 'My Orders',
              onTap: () {
                _showFeatureDialog(context, 'My Orders');
              },
            ),
            _buildProfileOption(
              icon: Icons.payment,
              title: 'Payment Methods',
              onTap: () {
                _showFeatureDialog(context, 'Payment Methods');
              },
            ),
            _buildProfileOption(
              icon: Icons.star,
              title: 'My Reviews',
              onTap: () {
                _showFeatureDialog(context, 'My Reviews');
              },
            ),
            _buildProfileOption(
              icon: Icons.settings,
              title: 'Settings',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
            ),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Change button color to black
                foregroundColor:
                    const Color.fromRGBO(242, 200, 54, 1), // Change text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.black,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Icon(icon, color: Color.fromRGBO(242, 200, 54, 1)),
          title: Text(
            title,
            style: const TextStyle(
                fontSize: 16, color: Color.fromRGBO(242, 200, 54, 1)),
          ),
        ),
      ),
    );
  }

  void _showFeatureDialog(BuildContext context, String featureName) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(featureName),
        content: const Text('Will be activated in the next update.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}

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
            _buildSettingOption(
              icon: Icons.security,
              title: 'Reset Security Question',
              onTap: () {
                _showFeatureDialog(context, 'Reset Security Question');
              },
            ),
            const SizedBox(height: 10),
            _buildSettingOption(
              icon: Icons.password,
              title: 'Reset Password',
              onTap: () {
                _showFeatureDialog(context, 'Reset Password');
              },
            ),
            const SizedBox(height: 10),
            _buildSettingOption(
              icon: Icons.fingerprint,
              title: 'Biometric Enrollment',
              onTap: () {
                _showFeatureDialog(context, 'Biometric Enrollment');
              },
            ),
            const SizedBox(height: 10),
            _buildSettingOption(
              icon: Icons.palette,
              title: 'Change Theme',
              onTap: () {
                _showFeatureDialog(context, 'Change Theme');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.black,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Icon(icon, color: Color.fromRGBO(242, 200, 54, 1)),
          title: Text(
            title,
            style: const TextStyle(
                fontSize: 16, color: Color.fromRGBO(242, 200, 54, 1)),
          ),
        ),
      ),
    );
  }

  void _showFeatureDialog(BuildContext context, String featureName) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(featureName),
        content: const Text('Will be activated in the next update.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
