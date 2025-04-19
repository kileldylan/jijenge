import 'package:flutter/material.dart';

class LandScreen extends StatelessWidget {
  const LandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Land"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Available Land",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C1B1F),
              ),
            ),
            const SizedBox(height: 16),
            _buildLandCard(
              context,
              'assets/images/eigth_acre.jpeg',
              '1/8 Acre',
              'KSh 1,000,000',
              'Location: Nairobi',
            ),
            _buildLandCard(
              context,
              'assets/images/quarter_acre.jpeg',
              '1/4 Acre',
              'KSh 2,000,000',
              'Location: Mombasa',
            ),
            _buildLandCard(
              context,
              'assets/images/half_acre.jpeg',
              '1/2 Acre',
              'KSh 4,000,000',
              'Location: Kisumu',
            ),
            _buildLandCard(
              context,
              'assets/images/1acre.jpeg',
              '1 Acre',
              'KSh 8,000,000',
              'Location: Nakuru',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLandCard(BuildContext context, String imageUrl, String landSize,
      String price, String location) {
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
                  landSize,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 4),
                Text(price, style: const TextStyle(color: Colors.green)),
                const SizedBox(height: 4),
                Text(location),
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
