import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Buyer Login',
          style: TextStyle(
            color: Color(0xFF1C1B1F),
            fontFamily: 'Inter',
            fontSize: 32,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo
              Center(
                child: Container(
                  width: 264,
                  height: 188,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Jijenge_logo.jpeg'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Email / Phone Number
              const Text(
                'Email / Phone Number',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFEFF1F5),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email or phone number',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Color(0xFFA09CAB),
                      fontFamily: 'Inter',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Password
              const Text(
                'Password',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFEFF1F5),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter password',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Color(0xFFA09CAB),
                            fontFamily: 'Inter',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.visibility, color: Color(0xFFA09CAB)),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/buyer_login');
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xFF1C1B1F),
                      fontFamily: 'Inter',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/buyer_dashboard');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0052CC),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Register Prompt
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/buyer_registration');
                  },
                  child: const Text(
                    'New here? Register as a Buyer',
                    style: TextStyle(
                      color: Color(0xFF1C1B1F),
                      fontFamily: 'Inter',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Bottom Padding
            ],
          ),
        ),
      ),
    );
  }
}
