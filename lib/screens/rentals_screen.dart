import 'package:flutter/material.dart';

class RentalsScreen extends StatelessWidget {
  const RentalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rentals"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Available Rentals",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C1B1F),
              ),
            ),
            const SizedBox(height: 16),
            _buildRentalCard(
              context,
              'assets/images/singleroom.jpeg',
              'Single Room',
              'KSh 5,000 per month',
            ),
            _buildRentalCard(
              context,
              'assets/images/bedsitter.jpeg',
              'Bedsitter',
              'KSh 8,000 per month',
            ),
            _buildRentalCard(
              context,
              'assets/images/1bedroom.jpeg',
              'One Bedroom',
              'KSh 12,000 per month',
            ),
            _buildRentalCard(
              context,
              'assets/images/2bedroom.jpeg',
              'Two Bedroom',
              'KSh 18,000 per month',
            ),
            _buildRentalCard(
              context,
              'assets/images/3bedroom.jpeg',
              'Three Bedroom',
              'KSh 25,000 per month',
            ),
            _buildRentalCard(
              context,
              'assets/images/studio.jpeg',
              'Studio Apartment',
              'KSh 20,000 per month',
            ),
            _buildRentalCard(
              context,
              'assets/images/DSQ.jpeg',
              'DSQ',
              'KSh 15,000 per month',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRentalCard(
      BuildContext context, String imageUrl, String rentalName, String price) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rentalName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 4),
                Text(price, style: const TextStyle(color: Colors.green)),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Handle inquire
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0052CC),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Inquire',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
