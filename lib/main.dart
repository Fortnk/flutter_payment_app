import 'package:flutter/material.dart';
import 'package:flutter_payment_app/assets/LoginScreen.dart';
import 'package:flutter_payment_app/assets/SignupScreen.dart';
import 'package:flutter_payment_app/assets/HomeScreen.dart';
import 'package:flutter_payment_app/assets/ProfileScreen.dart';
import 'package:flutter_payment_app/assets/ScanPayScreen.dart';
import 'package:flutter_payment_app/assets/CardServicesScreen.dart';
import 'package:flutter_payment_app/assets/AccountScreen.dart';
import 'package:flutter_payment_app/assets/TransactionScreen.dart';

void main() {
  runApp(const PaymentApp());
}

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor:
            const Color.fromARGB(255, 218, 171, 32), // Change background color
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(
              255, 218, 171, 32), // Change AppBar background color
          foregroundColor: Colors.black, // Change AppBar foreground color
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/scan_pay': (context) => const ScanPayScreen(),
        '/card_services': (context) => const CardServicesScreen(),
        '/accounts': (context) => const AccountsScreen(),
        '/transaction_history': (context) => const TransactionHistoryScreen(),
      },
    );
  }
}
