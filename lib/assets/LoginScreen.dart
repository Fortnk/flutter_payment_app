import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(242, 200, 54, 1), // Change background color
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWideScreen = constraints.maxWidth > 600;
          final padding = isWideScreen
              ? constraints.maxWidth * 0.2
              : constraints.maxWidth * 0.1;
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
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
                  Container(
                    padding: EdgeInsets.all(
                        constraints.maxWidth * 0.05), // Reduce padding
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                      color: Color.fromRGBO(242, 200, 54, 1)),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                      color: Color.fromRGBO(242, 200, 54, 1)),
                                ),
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.pushReplacementNamed(
                                        context, '/home');
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(242, 200, 54, 1),
                                  foregroundColor: Colors.black,
                                  shadowColor: Colors.black.withOpacity(0.5),
                                  elevation: 5,
                                ),
                                child: const Text('Login'),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Or login with',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildSocialButton(
                                'lib/assets/images/facebook_logo.png', context),
                            const SizedBox(width: 10),
                            _buildSocialButton(
                                'lib/assets/images/google_logo.png', context),
                            const SizedBox(width: 10),
                            _buildSocialButton(
                                'lib/assets/images/github_logo.png', context),
                          ],
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: const Text(
                            'Don\'t have an account? Sign up',
                            style: TextStyle(
                                color: Color.fromRGBO(242, 200, 54, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSocialButton(String assetPath, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your social login logic here
        Navigator.pushReplacementNamed(context, '/home');
      },
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding:
            EdgeInsets.all(12), // Adjust padding to fit within available space
      ),
      child: Image.asset(
        assetPath,
        height: 24,
        width: 24,
      ),
    );
  }
}
