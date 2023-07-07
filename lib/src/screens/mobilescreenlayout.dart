import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Art'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, 'search');
            },
          ),
          GestureDetector(
            onTap: () {
              showDialogBox(context);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(
                Icons.add_circle,
                size: 32.0,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Your Art',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Profile'),
              onTap: () {
                Navigator.pushNamed(context, 'profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Your Cart'),
              onTap: () {
                // Handle cart option
                Navigator.pushNamed(context, 'yourcart');
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Buy Art Pieces'),
              onTap: () {
                // Handle buy art pieces option
                Navigator.pushNamed(context, 'buyart');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, 'aboutus');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Explore',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: Scrollbar(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        // navigateToArtDetailsPage(context, index);
                      },
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/art$index.jpg',
                              height: 150.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                getArtType(index),
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Trending Art for Today',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: Scrollbar(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        // navigateToArtDetailsPage(context, index);
                      },
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/art$index.jpg',
                              height: 150.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                getArtType(index),
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Artists',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: Scrollbar(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        // navigateToArtistProfilePage(context, index);
                      },
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/artist$index.jpg'),
                              radius: 50.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                getArtistType(index),
                                style: TextStyle(
                                fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                        )],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Recently Viewed Arts',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: Scrollbar(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        // navigateToArtDetailsPage(context, index);
                      },
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/art$index.jpg',
                              height: 150.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              // child: Text(
                              //   getArtType(index),
                              //   style: TextStyle(
                              //     fontSize: 16.0,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getArtType(int index) {
    switch (index) {
      case 0:
        return 'Painting';
      case 1:
        return 'Dancing';
      case 2:
        return 'Singing';
      case 3:
        return 'Poetry';
      case 4:
        return 'Sketches';
      case 5:
        return 'Video Editing';
      case 6:
        return 'Mime Art';
      case 7:
        return 'Drama';
      case 8:
        return 'Others';
      default:
        return '';
    }
  }
String getArtistType(int index) {
    switch (index) {
      case 0:
        return 'Shreya Goshal';
      case 1:
        return 'Sonu Nigam';
      case 2:
        return 'Javed Akhtar';
      case 3:
        return 'Jasper Johns';
      case 4:
        return 'Alarmel Valli';
      default:
        return '';
    }
  }
  void showDialogBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Post Your ArtWork'),
          content: Text('Choose an option'),
          actions: <Widget>[
            TextButton(
              child: Text('From Gallery'),
              onPressed: () {
                // Handle Option 1
                Navigator.of(context).pop(); // Close the dialog box
              },
            ),
            TextButton(
              child: Text('Take photo'),
              onPressed: () {
                // Handle Option 2
                Navigator.of(context).pop(); // Close the dialog box
              },
            ),
          ],
        );
      },
    );
  }
}
