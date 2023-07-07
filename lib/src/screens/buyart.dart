import 'package:flutter/material.dart';

class BuyArtPage extends StatelessWidget {
  final List<Artwork> availableArtworks = [
    Artwork(
      name: 'Artwork 1',
      artist: 'John Doe',
      price: 100,
      image: 'assets/images/artwork1.jpg',
    ),
    Artwork(
      name: 'Artwork 2',
      artist: 'Jane Smith',
      price: 150,
      image: 'assets/images/art1.jpg',
    ),
    Artwork(
      name: 'Artwork 3',
      artist: 'David Johnson',
      price: 200,
      image: 'assets/images/artwork2.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Art'),
      ),
      body: ListView.builder(
        itemCount: availableArtworks.length,
        itemBuilder: (BuildContext context, int index) {
          final artwork = availableArtworks[index];
          return ListTile(
            leading: Image.asset(
              artwork.image,
              width: 50.0,
              height: 50.0,
            ),
            title: Text(artwork.name),
            subtitle: Text('By ${artwork.artist}'),
            trailing: Text('\$${artwork.price}'),
            onTap: () {
              showConfirmationDialog(context, artwork);
            },
          );
        },
      ),
    );
  }

  void showConfirmationDialog(BuildContext context, Artwork artwork) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Purchase'),
          content: Text('Are you sure you want to buy ${artwork.name} for \$${artwork.price}?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Buy'),
              onPressed: () {
                // Handle purchase logic
                Navigator.of(context).pop();
                showPurchaseConfirmationDialog(context, artwork);
              },
            ),
          ],
        );
      },
    );
  }

  void showPurchaseConfirmationDialog(BuildContext context, Artwork artwork) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Purchase Successful'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                artwork.image,
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(height: 10.0),
              Text('${artwork.name} purchased successfully!'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class Artwork {
  final String name;
  final String artist;
  final double price;
  final String image;

  Artwork({
    required this.name,
    required this.artist,
    required this.price,
    required this.image,
  });
}