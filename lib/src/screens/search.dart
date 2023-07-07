import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Artwork> artworks = [
    Artwork(name: 'Artwork 1', artist: 'John Doe', price: 100),
    Artwork(name: 'Artwork 2', artist: 'Jane Smith', price: 150),
    Artwork(name: 'Artwork 3', artist: 'David Johnson', price: 200),
  ];

  List<Artwork> filteredArtworks = [];

  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredArtworks = artworks;
  }

  void filterArtworks(String query) {
    if (query.isNotEmpty) {
      List<Artwork> tempList = [];
      artworks.forEach((artwork) {
        if (artwork.name.toLowerCase().contains(query.toLowerCase()) ||
            artwork.artist.toLowerCase().contains(query.toLowerCase())) {
          tempList.add(artwork);
        }
      });
      setState(() {
        filteredArtworks = tempList;
      });
    } else {
      setState(() {
        filteredArtworks = artworks;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Art'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                filterArtworks(value);
              },
              decoration: InputDecoration(
                labelText: 'Search Artworks',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredArtworks.length,
              itemBuilder: (BuildContext context, int index) {
                final artwork = filteredArtworks[index];
                return ListTile(
                  title: Text(artwork.name),
                  subtitle: Text('By ${artwork.artist}'),
                  trailing: Text('\$${artwork.price}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Artwork {
  final String name;
  final String artist;
  final double price;

  Artwork({
    required this.name,
    required this.artist,
    required this.price,
  });
}