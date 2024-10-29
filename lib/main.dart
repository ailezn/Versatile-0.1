import 'package:flutter/material.dart';
import 'screens/splashscreen.dart'; // Pastikan untuk mengimpor file splashscreen.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenWidget(), // Menetapkan SplashScreen sebagai home
    );
  }
}
