// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/Component/LoginScreen.dart';
import 'package:flutter_payment_app/Component/SignupScreen.dart';
import 'package:flutter_payment_app/Component/HomeScreen.dart';

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
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
