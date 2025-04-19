import 'package:flutter/material.dart';

class SellervendordashWidget extends StatelessWidget {
  const SellervendordashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Seller Dashboard',
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
              // Search Bar
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: const Color(0xFFEFF1F5),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: const Row(
                  children: [
                    Icon(Icons.search, size: 24, color: Color(0xFFA09CAB)),
                    SizedBox(width: 8),
                    Text(
                      'Search orders, messages, listings...',
                      style: TextStyle(
                        color: Color(0xFFA09CAB),
                        fontFamily: 'Inter',
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Business Overview
              const Text(
                'Business Overview',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Sales Metrics
              Row(
                children: [
                  _buildMetricCard(
                      'Total Sales: \$1,500 (Today)', Icons.attach_money),
                  const SizedBox(width: 8),
                  _buildMetricCard(
                      'Total Sales: \$10,000 (Week)', Icons.attach_money),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  _buildMetricCard(
                      'Total Sales: \$40,000 (Month)', Icons.attach_money),
                  const SizedBox(width: 8),
                  _buildMetricCard(
                      'Top-Performing Listing: 2-Bedroom House', Icons.star),
                ],
              ),
              const SizedBox(height: 24),
              // Quick Actions
              const Text(
                'Quick Actions',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _buildActionButton(
                      'Add New Listing', const Color(0xFF0052CC)),
                  const SizedBox(width: 8),
                  _buildActionButton(
                      'Manage Listings', const Color(0xFF16A34A)),
                ],
              ),
              const SizedBox(height: 24),
              // Recent Customer Activity Feed
              const Text(
                'Recent Customer Activity Feed',
                style: TextStyle(
                  color: Color(0xFF1C1B1F),
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              _buildActivityItem(
                  'New Order from John Doe - Placed 5 minutes ago'),
              _buildActivityItem('New Message from Jane Doe - Unread'),
              _buildActivityItem(
                  '5-Star Review Received for 2-Bedroom House Listing'),
              _buildActivityItem('Booking Pending Approval'),
              _buildActivityItem('Promotional & Featured Listings'),
              _buildActivityItem(
                  'Ad Performance Metrics: Views, Clicks, Conversions'),
              _buildActivityItem('To-Do List & Reminders'),
              _buildActivityItem('Upcoming Order Deadlines'),
              _buildActivityItem('Customer Follow-Ups'),
              _buildActivityItem('Pending Listing Updates'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMetricCard(String text, IconData icon) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFFEFF1F5),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, size: 24, color: const Color(0xFF1C1B1F)),
            const SizedBox(height: 8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF1C1B1F),
                fontFamily: 'Inter',
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(String text, Color color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          // Handle action
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildActivityItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF1C1B1F),
          fontFamily: 'Inter',
          fontSize: 16,
        ),
      ),
    );
  }
}
