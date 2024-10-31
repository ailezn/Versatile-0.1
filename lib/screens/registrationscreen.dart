import 'package:flutter/material.dart';
import 'home_screen.dart';

class RegistrationWidget extends StatefulWidget {
  const RegistrationWidget({super.key});

  @override
  _RegistrationWidgetState createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  void _signUp() {
    // Validate input fields
    if (_fullNameController.text.isEmpty ||
        _usernameController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty ||
        _phoneNumberController.text.isEmpty) {
      // Show alert if any field is empty
      _showAlert('All fields are required!');
      return;
    }

    // Check if password and confirm password match
    if (_passwordController.text != _confirmPasswordController.text) {
      _showAlert('Passwords do not match!');
      return;
    }

    // Navigate to HomeWidget if all validations pass
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  void _showAlert(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Validation Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      body: Column(
        children: [
          // App Bar
          Container(
            padding: const EdgeInsets.only(top: 54, bottom: 16),
            child: const Text(
              'Registration',
              style: TextStyle(
                color: Color(0xFF00002B),
                fontFamily: 'SF Pro Rounded',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  buildInputField('Full name', 'Enter your full name', _fullNameController),
                  const SizedBox(height: 6),
                  buildInputField('Username', 'Create your username', _usernameController),
                  const SizedBox(height: 16),
                  buildInputField('Password', 'Enter your password', _passwordController, isObscure: true),
                  const SizedBox(height: 4),
                  const Text(
                    'Create a minimum of 8 characters and use a combination of uppercase letters, lowercase letters, numbers, and symbols. Example: UtyH3b4t#',
                    style: TextStyle(
                      color: Color(0xFF2B0200),
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 16),
                  buildInputField('Confirm Password', 'Confirm your new password', _confirmPasswordController, isObscure: true),
                  const SizedBox(height: 16),
                  buildInputField('Phone number', 'Enter your phone number', _phoneNumberController, prefixText: '+62'),

                  // Sign Up Button
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(83, 100, 147, 1),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                          color: Color.fromRGBO(162, 162, 208, 1),
                          width: 2,
                        ),
                      ),
                    ),
                    onPressed: _signUp,
                    child: const Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color.fromRGBO(254, 254, 254, 1),
                          fontFamily: 'SF Pro Rounded',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      side: const BorderSide(
                        color: Color.fromRGBO(73, 73, 141, 1),
                        width: 2,
                      ),
                    ),
                    onPressed: () {
                      // Navigate to Login screen
                      Navigator.pop(context);
                    },
                    child: const Center(
                      child: Text(
                        'Already have an account? Log in',
                        style: TextStyle(
                          color: Color.fromRGBO(73, 73, 141, 1),
                          fontFamily: 'SF Pro Rounded',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInputField(String label, String hint, TextEditingController controller, {String? prefixText, bool isObscure = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF00002B),
            fontFamily: 'SF Pro Rounded',
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            border: Border.all(color: const Color(0xFFA2A2D0)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              if (prefixText != null) 
                Text(
                  prefixText,
                  style: const TextStyle(
                    color: Color(0xFF536493),
                    fontFamily: 'SF Pro Rounded',
                    fontSize: 14,
                  ),
                ),
              if (prefixText != null) const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: controller,
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: const TextStyle(
                      color: Color(0xFF49498D),
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 14,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
