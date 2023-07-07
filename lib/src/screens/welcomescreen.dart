import 'package:flutter/material.dart';
import 'package:yourart/src/constants/textstring.dart';
import 'package:yourart/src/screens/signin.dart';
import 'package:yourart/src/screens/signup.dart';

class ArtApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Art',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Art'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Your Art',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'For the Art and The Artist!',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SignIn()),
  );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SignUpScreen()),
  );
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}