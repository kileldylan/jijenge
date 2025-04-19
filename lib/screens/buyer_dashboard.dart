// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:jijenge/screens/jobs_screen.dart';
import 'package:jijenge/screens/services_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Map<String, String>> cartItems = [];

  static const List<Widget> _widgetOptions = <Widget>[
    HomePageContent(),
    ServicesScreen(),
    JobsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void addToCart(Map<String, String> item) {
    setState(() {
      cartItems.add(item);
    });
  }

  void _showCart(BuildContext context) {
    if (cartItems.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Your cart is empty')),
      );
    } else {
      Navigator.pushNamed(context, '/buyer_login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jijenge"),
        actions: [
          IconButton(
            icon: Stack(
              children: [
                const Icon(Icons.shopping_cart),
                if (cartItems.isNotEmpty)
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                      child: Text(
                        '${cartItems.length}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            onPressed: () => _showCart(context),
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              _showProfileOptions(context);
            },
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushNamed(context, '/sellers_login');
              },
              label: const Text("Sell"),
              icon: const Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Jobs',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _showProfileOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Manage Profile"),
              onTap: () => Navigator.pushNamed(context, '/profile'),
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("My Listings"),
              onTap: () => Navigator.pushNamed(context, '/my_listings'),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () => Navigator.pushNamed(context, '/buyer_login'),
            ),
          ],
        );
      },
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search for items or services...",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "Popular Listings",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _buildCategoryChips(context),
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: popularItems.length,
            itemBuilder: (context, index) {
              return _buildItemCard(
                context,
                popularItems[index]['image']!,
                popularItems[index]['name']!,
                popularItems[index]['price']!,
              );
            },
          ),
        ),
      ],
    );
  }

  List<Widget> _buildCategoryChips(BuildContext context) {
    List<String> categories = [
      "Moving",
      "Electronics",
      "Real Estate",
      "Fashion",
    ];

    List<Widget> categoryChips = categories
        .map((category) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                onTap: () {
                  _navigateToCategory(context, category);
                },
                child: Chip(
                  label: Text(category),
                  backgroundColor: Colors.blue.shade100,
                ),
              ),
            ))
        .toList();

    categoryChips.insert(
      2,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: PopupMenuButton<String>(
          onSelected: (value) {
            if (value == "Rental") {
              Navigator.pushNamed(context, '/rentals');
            } else if (value == "Land") {
              Navigator.pushNamed(context, '/land');
            } else if (value == "Lease") {
              Navigator.pushNamed(context, '/lease');
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: "Rental",
              child: Text("Rental"),
            ),
            const PopupMenuItem<String>(
              value: "Land",
              child: Text("Land"),
            ),
            const PopupMenuItem<String>(
              value: "Lease",
              child: Text("Lease"),
            ),
          ],
          child: Chip(
            label: const Text("Properties"),
            backgroundColor: Colors.blue.shade100,
          ),
        ),
      ),
    );

    return categoryChips;
  }

  void _navigateToCategory(BuildContext context, String category) {
    if (category == "Electronics") {
      Navigator.pushNamed(context, '/electronics');
    } else if (category == "Moving") {
      Navigator.pushNamed(context, '/heavy_machine');
    } else if (category == "Real Estate") {
      Navigator.pushNamed(context, '/real_estate');
    } else if (category == "Fashion") {
      Navigator.pushNamed(context, '/fashion');
    }
  }

  Widget _buildItemCard(
      BuildContext context, String imageUrl, String itemName, String price) {
    return GestureDetector(
      onTap: () {
        final homePageState = context.findAncestorStateOfType<HomePageState>();
        homePageState?.addToCart({
          'image': imageUrl,
          'name': itemName,
          'price': price,
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
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
                    itemName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(price, style: const TextStyle(color: Colors.green)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const List<Map<String, String>> popularItems = [
  {
    'image': 'assets/images/bedsitter.jpeg',
    'name': 'Bedsitter',
    'price': 'KSh 8,000 per month',
  },
  {
    'image': 'assets/images/1bedroom.jpeg',
    'name': 'One Bedroom',
    'price': 'KSh 12,000 per month',
  },
  {
    'image': 'assets/images/2bedroom.jpeg',
    'name': 'Two Bedroom',
    'price': 'KSh 18,000 per month',
  },
  {
    'image': 'assets/images/3bedroom.jpeg',
    'name': 'Three Bedroom',
    'price': 'KSh 25,000 per month',
  },
  {
    'image': 'assets/images/studio.jpeg',
    'name': 'Studio Apartment',
    'price': 'KSh 20,000 per month',
  },
  {
    'image': 'assets/images/DSQ.jpeg',
    'name': 'DSQ',
    'price': 'KSh 15,000 per month',
  },
  {
    'image': 'assets/images/quarter_acre.jpeg',
    'name': '1/4 Acre',
    'price': 'KSh 2,000,000',
  },
  {
    'image': 'assets/images/1acre.jpeg',
    'name': '1 Acre',
    'price': 'KSh 8,000,000',
  },
  {
    'image': 'assets/images/eigth_acre.jpeg',
    'name': '1/8 Acre',
    'price': 'KSh 1,000,000',
  },
  {
    'image': 'assets/images/bulldozer.jpeg',
    'name': 'Bulldozer',
    'price': 'KSh 10,000,000',
  },
  {
    'image': 'assets/images/excavator.jpeg',
    'name': 'Excavator',
    'price': 'KSh 12,000,000',
  },
  {
    'image': 'assets/images/crane.jpeg',
    'name': 'Crane',
    'price': 'KSh 15,000,000',
  },
  {
    'image': 'assets/images/androidbox.jpeg',
    'name': 'Android Box',
    'price': 'KSh 15,000',
  },
  {
    'image': 'assets/images/starlink.jpeg',
    'name': 'Starlink',
    'price': 'KSh 25,000',
  },
  {
    'image': 'assets/images/Oppoa16.jpeg',
    'name': 'OppoA16',
    'price': 'KSh 55,000',
  },
  {
    'image': 'assets/images/Oppo.jpeg',
    'name': 'Oppo',
    'price': 'KSh 15,000',
  },
  {
    'image': 'assets/images/glaze40.jpeg',
    'name': 'Glaze 40 Inch',
    'price': 'KSh 25,000',
  },
  {
    'image': 'assets/images/tyres.jpeg',
    'name': 'Tyre',
    'price': 'KSh 5,000',
  },
  {
    'image': 'assets/images/wheelbarrow.jpeg',
    'name': 'WheelBarrow',
    'price': 'KSh 10,000',
  },
  {
    'image': 'assets/images/elegant_dresses.jpeg',
    'name': 'Elegant Dress',
    'price': 'KSh 3,000',
  },
  {
    'image': 'assets/images/stylish_shoes.jpeg',
    'name': 'Stylish Shoes',
    'price': 'KSh 2,500',
  },
  {
    'image': 'assets/images/luxury_watch.jpeg',
    'name': 'Luxury Watch',
    'price': 'KSh 5,000',
  },
  {
    'image': 'assets/images/singleroom.jpeg',
    'name': 'Single Room',
    'price': 'KSh 5,000 per month',
  },
];
