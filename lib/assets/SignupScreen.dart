import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(242, 200, 54, 1), // Change background color
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make AppBar transparent
        elevation: 0, // Remove AppBar shadow
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50), // Move the logo up
              Image.asset(
                'lib/assets/images/photo.jpg',
                height: 100,
              ),
              const SizedBox(height: 16),
              const Text(
                'Create an account with us today',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal, // Reduce font weight
                  color: Colors.black, // Change text color to black
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(
                                242, 200, 54, 1)), // Change label color
                      ),
                      style: const TextStyle(
                          color: Color.fromRGBO(
                              242, 200, 54, 1)), // Change text color
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(
                                242, 200, 54, 1)), // Change label color
                      ),
                      style: const TextStyle(
                          color: Color.fromRGBO(
                              242, 200, 54, 1)), // Change text color
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(
                                242, 200, 54, 1)), // Change label color
                      ),
                      obscureText: true,
                      style: const TextStyle(
                          color: Color.fromRGBO(
                              242, 200, 54, 1)), // Change text color
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(242, 200, 54, 1),
                        foregroundColor: Colors.black,
                        shadowColor: Colors.black.withOpacity(0.5),
                        elevation: 5,
                      ),
                      child: const Text('Sign Up'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
