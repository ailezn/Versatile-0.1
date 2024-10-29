import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Handle logout logic here
              // For example, navigate back to the login screen or clear user data
              Navigator.pop(context); // Adjust this based on your navigation flow
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            'Profile Screen',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
