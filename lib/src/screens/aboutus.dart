import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'About Our Art App',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Our Art App is a platform designed to connect artists with art enthusiasts from around the world. We believe in the power of art to inspire, provoke thought, and evoke emotions. Our goal is to provide a space where artists can showcase their talent and connect with a global audience.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Features of Our Art App',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '- Explore and discover a diverse range of artwork from various art forms, including paintings, photography, sculptures, and more.',
            ),
            Text(
              '- Purchase artwork directly from the artists and support their creative journey.',
            ),
            Text(
              '- Sell your own artwork and connect with potential buyers.',
            ),
            Text(
              '- Make monetary contributions to support artists you admire.',
            ),
            Text(
              '- Interact with artists and fellow art enthusiasts through comments, likes, and sharing.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Join Our Art Community',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'We welcome artists and art lovers to join our vibrant community. Whether you are an aspiring artist, an established professional, or simply appreciate art, our platform offers something for everyone. Come and be a part of our growing art family!',
            ),
          ],
        ),
      ),
    );
  }
}
