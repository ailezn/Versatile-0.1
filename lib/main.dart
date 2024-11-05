import 'package:flutter/material.dart';
import 'package:versatile_app/screens/add_screen.dart';
import 'package:versatile_app/screens/changepassword.dart';
import 'package:versatile_app/screens/cupboard_screen.dart';
import 'package:versatile_app/screens/editprofile.dart';
import 'package:versatile_app/screens/forgotpassword.dart';
import 'package:versatile_app/screens/home_screen.dart';
import 'package:versatile_app/screens/loginscreen.dart';
import 'package:versatile_app/screens/profile_screen.dart';
import 'package:versatile_app/screens/recommended_screen.dart';
import 'package:versatile_app/screens/registrationscreen.dart';
import 'screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreenWidget(),
        '/register': (context) => const RegistrationWidget(),
        '/login': (context) => const LoginScreen(),
        '/forgot-password': (context) => const ForgotpasswordWidget(),
        '/home': (context) => HomeScreen(),
        '/recommend': (context) => RecommendedScreen(),
        '/add': (context) => AddScreen(),
        '/cupboard': (context) => CupboardScreen(),
        '/profile': (context) => ProfileWidget(),
        '/edit-profile': (context) => EditProfileWidget(),
        '/change-profile': (context) => ChangePasswordWidget(),
      },
    );
  }
}
