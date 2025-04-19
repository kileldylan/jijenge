import 'package:flutter/material.dart';
import 'package:jijenge/screens/buyer_booking.dart';
import 'package:jijenge/screens/buyer_dashboard.dart';
import 'package:jijenge/screens/buyer_login.dart';
import 'package:jijenge/screens/buyer_registration.dart';
import 'package:jijenge/screens/electronics.dart';
import 'package:jijenge/screens/fashion_screen.dart';
import 'package:jijenge/screens/heavy_machines.dart';
import 'package:jijenge/screens/profile.dart';
import 'package:jijenge/screens/real_estate.dart';
import 'package:jijenge/screens/sellers_dashboard.dart';
import 'package:jijenge/screens/sellers_login.dart';
import 'package:jijenge/screens/sellers_register.dart';
import 'package:jijenge/screens/splash_screen.dart';
import 'package:jijenge/screens/rentals_screen.dart';
import 'package:jijenge/screens/land_screen.dart';
import 'package:jijenge/screens/lease_screen.dart';
import 'package:jijenge/screens/services_screen.dart';
import 'package:jijenge/screens/jobs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      title: 'Jijenge App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/buyer_dashboard', // Default route
      routes: {
        '/splash_screen': (context) => const SplashScreen(), // Splash screen
        '/buyer_dashboard': (context) => const HomePage(), // Buyer Dashboard
        '/buyer_registration': (context) =>
            const BuyerRegistrationWidget(), // Buyer Registration screen
        '/buyer_login': (context) => const LoginPage(), // Buyer Login screen
        '/booking_management': (context) =>
            const BookingmanagementWidget(), // Booking Management screen
        '/electronics': (context) =>
            const ElectronicsPage(), // Electronics screen
        '/sellers_login': (context) =>
            const SellerLoginWidget(), // Sellers Login screen
        '/sellers_dashboard': (context) =>
            const SellervendordashWidget(), // Sellers Dashboard screen
        '/sellers_register': (context) =>
            const SellersregisterWidget(), // Sellers Register screen
        '/rentals': (context) => const RentalsScreen(), // Rentals screen
        '/land': (context) => const LandScreen(), // Land screen
        '/lease': (context) => const LeaseScreen(), // Lease screen
        '/heavy_machine': (context) =>
            const HeavyMachineScreen(), // Heavy Machine screen
        '/services': (context) => const ServicesScreen(), // Services screen
        '/jobs': (context) => const JobsScreen(), // Jobs screen
        '/real_estate': (context) => const RealEstateScreen(), // Jobs screen
        '/fashion': (context) => const FashionScreen(), // Jobs screen
        '/profile': (context) => const BuyerProfilePage(), // Jobs screen
      },
    );
  }
}
