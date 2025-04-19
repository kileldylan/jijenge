import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class RealEstateScreen extends StatelessWidget {
  const RealEstateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Real Estate"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Available Properties",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C1B1F),
              ),
            ),
            const SizedBox(height: 16),
            _buildPropertyCard(
              context,
              'assets/images/DSQ.jpeg',
              '3 Bedroom Apartment',
              'KSh 15,000,000',
              'Location: Nairobi',
              'Seller: John Doe',
              'Phone: +254700000000',
            ),
            _buildPropertyCard(
              context,
              'assets/images/2bedroom.jpeg',
              '4 Bedroom House',
              'KSh 25,000,000',
              'Location: Mombasa',
              'Seller: Jane Doe',
              'Phone: +254711111111',
            ),
            _buildPropertyCard(
              context,
              'assets/images/3bedroom.jpeg',
              '2 Bedroom Apartment',
              'KSh 10,000,000',
              'Location: Kisumu',
              'Seller: Mark Smith',
              'Phone: +254722222222',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPropertyCard(
      BuildContext context,
      String imageUrl,
      String propertyName,
      String price,
      String location,
      String seller,
      String phone) {
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
                  propertyName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 4),
                Text(price, style: const TextStyle(color: Colors.green)),
                const SizedBox(height: 4),
                Text(location),
                const SizedBox(height: 4),
                Text(seller),
                const SizedBox(height: 4),
                Text(phone),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    _makePhoneCall(phone);
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

  void _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await url_launcher.launchUrl(launchUri);
  }
}
