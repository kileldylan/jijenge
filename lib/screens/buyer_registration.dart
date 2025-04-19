import 'package:flutter/material.dart';

class BuyerRegistrationWidget extends StatelessWidget {
  const BuyerRegistrationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Logo section
            _buildLogoSection(),
            // Title section
            _buildTitleSection(),
            // Form fields
            _buildFormFields(),
            // Terms & Conditions checkbox
            _buildTermsAndConditions(),
            // Register button
            _buildRegisterButton(context),
            // Login prompt
            _buildLoginPrompt(context),
          ],
        ),
      ),
    );
  }

  // Build the logo section
  Widget _buildLogoSection() {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Jijenge_logo.jpeg'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  // Build the title section
  Widget _buildTitleSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: const Text(
        'Create Your Buyer Account',
        style: TextStyle(
          color: Color(0xFF1C1B1F),
          fontFamily: 'Inter',
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Build the form fields
  Widget _buildFormFields() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _buildInputField('Full Name', 'Enter your full name'),
          const SizedBox(height: 16),
          _buildInputField(
              'Email / Phone Number', 'Enter your email or phone number'),
          const SizedBox(height: 16),
          _buildInputField('Password', 'Enter password', isPassword: true),
          const SizedBox(height: 16),
          _buildInputField('Confirm Password', 'Confirm password',
              isPassword: true),
          const SizedBox(height: 16),
          _buildLocationField(),
        ],
      ),
    );
  }

  // Build a single input field
  Widget _buildInputField(String label, String hint,
      {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  obscureText: isPassword,
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: const TextStyle(
                      color: Color(0xFFA09CAB),
                      fontFamily: 'Inter',
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              if (isPassword)
                const Icon(Icons.visibility,
                    size: 24, color: Color(0xFFA09CAB)),
            ],
          ),
        ),
      ],
    );
  }

  // Build the location field
  Widget _buildLocationField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Location',
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: const Row(
            children: [
              Text(
                'Select',
                style: TextStyle(
                  color: Color(0xFFA09CAB),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_drop_down, size: 24, color: Color(0xFFA09CAB)),
            ],
          ),
        ),
      ],
    );
  }

  // Build the terms and conditions checkbox
  Widget _buildTermsAndConditions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Checkbox(
            value: true, // Replace with a state variable if needed
            onChanged: (value) {},
            activeColor: const Color(0xFF1C1B1F),
          ),
          const Text(
            'I agree to the Terms & Conditions',
            style: TextStyle(
              color: Color(0xFF1C1B1F),
              fontFamily: 'Inter',
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  // Build the register button
  Widget _buildRegisterButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/buyer_login');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0052CC),
            padding: const EdgeInsets.symmetric(vertical: 16),
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
    );
  }

  // Build the login prompt
  Widget _buildLoginPrompt(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/buyer_login');
          },
          child: const Text(
            'Already have an account? Login',
            style: TextStyle(
              color: Color(0xFF1C1B1F),
              fontFamily: 'Inter',
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
