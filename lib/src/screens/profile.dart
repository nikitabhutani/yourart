import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          SizedBox(height: 10.0),
          Text(
            'John Doe',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Followers: 100',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(width: 10.0),
              Text(
                'Following: 50',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  
                 decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/post$index.jpg'),
                      fit: BoxFit.cover,
                    ),
                 ) );
              },
            ),
          ),
        ],
      ),
    );
  }
}