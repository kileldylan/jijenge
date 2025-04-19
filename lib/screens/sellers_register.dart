import 'package:flutter/material.dart';

class SellersregisterWidget extends StatelessWidget {
  const SellersregisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Register as a Seller',
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
              // Full Name
              const Text(
                'Full Name',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              _buildTextField('Enter your full name'),
              const SizedBox(height: 24),
              // Business Name (Optional)
              const Text(
                'Business Name (Optional)',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              _buildTextField('Enter your business name'),
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
              _buildTextField('Enter your email or phone number'),
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
              _buildPasswordField('Enter password'),
              const SizedBox(height: 24),
              // Confirm Password
              const Text(
                'Confirm Password',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              _buildPasswordField('Confirm your password'),
              const SizedBox(height: 24),
              // Business Type
              const Text(
                'Business Type',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              _buildTextField('Enter your business type'),
              const SizedBox(height: 24),
              // Location
              const Text(
                'Location',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              _buildTextField('City/Town, Pin Location'),
              const SizedBox(height: 24),
              // Register Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sellers_login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0052CC),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Login Prompt
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sellers_login');
                  },
                  child: const Text(
                    'Already have an account? Login here',
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

  Widget _buildTextField(String hintText) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFEFF1F5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: const TextStyle(
            color: Color(0xFFA09CAB),
            fontFamily: 'Inter',
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField(String hintText) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFEFF1F5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  color: Color(0xFFA09CAB),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const Icon(Icons.visibility, color: Color(0xFFA09CAB)),
        ],
      ),
    );
  }
}
