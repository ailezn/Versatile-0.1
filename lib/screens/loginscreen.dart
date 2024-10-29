import 'package:flutter/material.dart';
import 'package:versatile_app/screens/registrationscreen.dart';
import 'package:versatile_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Predefined username and password
  final String correctUsername = 'zelia@gmail';
  final String correctPassword = '1';

  void _login() {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (username == correctUsername && password == correctPassword) {
      // Navigate to HomeWidget if the credentials are correct
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeWidget()),
      );
    } else {
      // Show error popup if the credentials are incorrect
      _showErrorDialog();
      // Clear the text fields
      _usernameController.clear();
      _passwordController.clear();
    }
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Failed'),
          content: Text('Incorrect username or password.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 254, 254, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              // Image Section
              Container(
                width: 268.89,
                height: 165,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo2.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Organize your cupboard',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 21.39,
                  height: 1.57,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Versatile.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 27.5,
                  height: 1.22,
                ),
              ),
              SizedBox(height: 50),
              // Username Field
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hello',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 43, 1),
                        fontFamily: 'SF Pro Rounded',
                        fontSize: 40,
                        height: 0.84,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Username',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 43, 1),
                        fontFamily: 'SF Pro Rounded',
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(254, 254, 254, 1),
                        border: Border.all(
                          color: Color.fromRGBO(162, 162, 208, 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        controller: _usernameController, // Assign the controller
                        decoration: InputDecoration(
                          hintText: 'Enter your username',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Password Field
                    Text(
                      'Password',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 43, 1),
                        fontFamily: 'SF Pro Rounded',
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(162, 162, 208, 1),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        controller: _passwordController, // Assign the controller
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(
                          color: Color.fromRGBO(43, 2, 0, 1),
                          fontFamily: 'SF Pro Rounded',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              // Login Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(83, 100, 147, 1),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: BorderSide(
                            color: Color.fromRGBO(162, 162, 208, 1),
                            width: 2,
                          ),
                        ),
                      ),
                      onPressed: _login, // Call login function
                      child: Center(
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            color: Color.fromRGBO(254, 254, 254, 1),
                            fontFamily: 'SF Pro Rounded',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        side: BorderSide(
                          color: Color.fromRGBO(73, 73, 141, 1),
                          width: 2,
                        ),
                      ),
                      onPressed: () {
                        // Navigate to RegistrationScreen on button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegistrationWidget()),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Don’t have an account? Sign up',
                          style: TextStyle(
                            color: Color.fromRGBO(73, 73, 141, 1),
                            fontFamily: 'SF Pro Rounded',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
