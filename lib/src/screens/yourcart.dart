import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final List<Artwork> purchasedArtworks = [
    Artwork(
      name: 'Prerna Khatri\'s Still Art',
      amount: 50,
      image: 'assets/images/artwork1.jpg',
    ),
    Artwork(
      name: 'Shreya\'s poetry',
      amount: 75,
      image: 'assets/images/artwork2.png',
    ),
    Artwork(
      name: 'Himanshi Soni\'s Painting',
      amount: 100,
      image: 'assets/images/art0.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: ListView.builder(
        itemCount: purchasedArtworks.length,
        itemBuilder: (BuildContext context, int index) {
          final artwork = purchasedArtworks[index];
          return ListTile(
            leading: Image.asset(
              artwork.image,
              width: 50.0,
              height: 50.0,
            ),
            title: Text(artwork.name),
            subtitle: Text('Amount: \$${artwork.amount}'),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Total: \$${calculateTotalAmount()}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  double calculateTotalAmount() {
    double total = 0;
    for (var artwork in purchasedArtworks) {
      total += artwork.amount;
    }
    return total;
  }
}

class Artwork {
  final String name;
  final double amount;
  final String image;

  Artwork({required this.name, required this.amount, required this.image});
}
