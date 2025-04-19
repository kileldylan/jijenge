import 'package:flutter/material.dart';

class LeaseScreen extends StatelessWidget {
  const LeaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lease"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Available Lease",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C1B1F),
              ),
            ),
            const SizedBox(height: 16),
            _buildLeaseCard(
              context,
              'assets/images/eigth.jpeg',
              '1/8 Acre',
              'KSh 50,000 per year',
              'Location: Nairobi',
              'Lease Terms: 5 years',
            ),
            _buildLeaseCard(
              context,
              'assets/images/quarter_acre.jpeg',
              '1/4 Acre',
              'KSh 100,000 per year',
              'Location: Mombasa',
              'Lease Terms: 10 years',
            ),
            _buildLeaseCard(
              context,
              'assets/images/half_acre.jpeg',
              '1/2 Acre',
              'KSh 200,000 per year',
              'Location: Kisumu',
              'Lease Terms: 15 years',
            ),
            _buildLeaseCard(
              context,
              'assets/images/1_acre.jpeg',
              '1 Acre',
              'KSh 400,000 per year',
              'Location: Nakuru',
              'Lease Terms: 20 years',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLeaseCard(BuildContext context, String imageUrl,
      String leaseSize, String price, String location, String terms) {
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
                  leaseSize,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 4),
                Text(price, style: const TextStyle(color: Colors.green)),
                const SizedBox(height: 4),
                Text(location),
                const SizedBox(height: 4),
                Text(terms),
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
