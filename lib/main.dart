// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/Component/LoginScreen.dart';
import 'package:flutter_payment_app/Component/SignupScreen.dart';
import 'package:flutter_payment_app/Component/HomeScreen.dart';
import 'package:flutter_payment_app/Component/ProfileScreen.dart';
import 'package:flutter_payment_app/Component/ScanPayScreen.dart';
import 'package:flutter_payment_app/Component/CardServicesScreen.dart';

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
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.white,
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
      },
    );
  }
}
