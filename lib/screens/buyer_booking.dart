import 'package:flutter/material.dart';

class BookingmanagementWidget extends StatelessWidget {
  const BookingmanagementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Manage Your Booking',
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
              // Service/Product Image
              Container(
                width: double.infinity,
                height: 188,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFFEFF1F5),
                ),
                child:
                    const Icon(Icons.image, size: 64, color: Color(0xFF1C1B1F)),
              ),
              const SizedBox(height: 12),
              const Text(
                'Luxury 3-Bedroom Apartment for Rent',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                'Seller: John Doe, ⭐⭐⭐⭐',
                style: TextStyle(
                  color: Color(0xFFA09CAB),
                  fontFamily: 'Inter',
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                'Price: \$2,500/month',
                style: TextStyle(
                  color: Color(0xFFA09CAB),
                  fontFamily: 'Inter',
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 24),
              // Start and End Date
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Start',
                        style: TextStyle(
                          color: Color(0xFFA09CAB),
                          fontFamily: 'Inter',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Tue, Oct 24',
                        style: TextStyle(
                          color: Color(0xFF1C1B1F),
                          fontFamily: 'Inter',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'End',
                        style: TextStyle(
                          color: Color(0xFFA09CAB),
                          fontFamily: 'Inter',
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Wed, Oct 25',
                        style: TextStyle(
                          color: Color(0xFF1C1B1F),
                          fontFamily: 'Inter',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Payment Methods
              const Text(
                'Payment Methods',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              _buildPaymentMethod('Mpesa (STK Push)'),
              _buildPaymentMethod('PayPal'),
              _buildPaymentMethod('Bank Transfer'),
              _buildPaymentMethod('Pay on Delivery'),
              const SizedBox(height: 24),
              // Promo Code
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFEFF1F5),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: const Text(
                  'Enter promo code (optional)',
                  style: TextStyle(
                    color: Color(0xFFA09CAB),
                    fontFamily: 'Inter',
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Confirm Booking Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle booking confirmation
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF16A34A),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Confirm Booking',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Payment Security Info
              const Text(
                'Your payment is secure.',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Build a single payment method item
  Widget _buildPaymentMethod(String method) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFFEFF1F5),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          method,
          style: const TextStyle(
            color: Color(0xFF1C1B1F),
            fontFamily: 'Inter',
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
