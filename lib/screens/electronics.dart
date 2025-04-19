import 'package:flutter/material.dart';

class ElectronicsPage extends StatelessWidget {
  const ElectronicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Electronics"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              _showProfileOptions(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for electronics...",
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
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: electronicsItems.length,
              itemBuilder: (context, index) {
                return _buildItemCard(
                  context,
                  electronicsItems[index]['image']!,
                  electronicsItems[index]['name']!,
                  electronicsItems[index]['price']!,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/sell');
        },
        label: const Text("Sell"),
        icon: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildItemCard(
      BuildContext context, String imageUrl, String itemName, String price) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/login');
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
              onTap: () => Navigator.pushNamed(context, '/login'),
            ),
          ],
        );
      },
    );
  }
}

const List<Map<String, String>> electronicsItems = [
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
    'image': 'assets/images/Opporeno12.jpeg',
    'name': 'Oppo Reno 12',
    'price': 'KSh 37,000',
  },
  {
    'image': 'assets/images/Oppoa16.jpeg',
    'name': 'OppoA16',
    'price': 'KSh 55,000',
  },
  {
    'image': 'assets/images/Oppoa3.jpeg',
    'name': 'Oppo A3',
    'price': 'KSh 35,000',
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
    'image': 'assets/images/car.jpeg',
    'name': 'Masserati',
    'price': 'KSh 85,000,000',
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
];
