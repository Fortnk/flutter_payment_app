import 'package:flutter/material.dart';
import 'AccountScreen.dart';
import 'PayBillsScreen.dart';
import 'TransactionScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PayBillsScreen()),
        );
      } else if (_selectedIndex == 2) {
        Navigator.pushNamed(context, '/profile');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FF19 Payment App'),
        centerTitle: true,
        toolbarHeight: 80, // Increase the height of the AppBar
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: EdgeInsets.all(constraints.maxWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildFeatureCard(constraints.biggest, Icons.account_circle,
                        'Account', context),
                    _buildFeatureCard(constraints.biggest,
                        Icons.monetization_on, 'Transaction', context),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildFeatureCard(constraints.biggest,
                        Icons.qr_code_scanner, 'Scan & Pay', context),
                    _buildFeatureCard(constraints.biggest, Icons.credit_card,
                        'Card Services', context),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments),
            label: 'Pay Bills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildFeatureCard(
      Size size, IconData icon, String title, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == 'Scan & Pay') {
          Navigator.pushNamed(context, '/scan_pay');
        } else if (title == 'Card Services') {
          Navigator.pushNamed(context, '/card_services');
        } else if (title == 'Account') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AccountsScreen()),
          );
        } else if (title == 'Transaction') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const TransactionHistoryScreen()),
          );
        }
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          width: size.width * 0.4,
          height: size.height * 0.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.yellow),
              const SizedBox(height: 10),
              Text(title, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
