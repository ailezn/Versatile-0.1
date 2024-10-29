import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Make sure to include this import

class ChangePasswordWidget extends StatefulWidget {
  @override
  _ChangePasswordWidgetState createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 852,
      decoration: BoxDecoration(
        color: Color.fromRGBO(254, 254, 254, 1),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 21),
              child: Column(
                children: <Widget>[
                  _buildHeader(),
                  SizedBox(height: 30), // Space between header and form
                  _buildPasswordForm(),
                  SizedBox(height: 20), // Space between form and button
                  _buildChangePasswordButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Change Password',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 43, 1),
            fontFamily: 'SF Pro Rounded',
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        // You can add an icon or other widgets if needed
      ],
    );
  }

  Widget _buildPasswordForm() {
    return Column(
      children: <Widget>[
        _buildPasswordField('Old password', 'Enter your old password'),
        SizedBox(height: 20),
        _buildPasswordField('New password', 'Enter your new password'),
        Text(
          'Create a minimum of 8 characters and use a combination of uppercase letters, lowercase letters, numbers, and symbols. Example: UtyH3b4t#',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(43, 2, 0, 1),
            fontFamily: 'SF Pro Rounded',
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 20),
        _buildPasswordField('Confirm new password', 'Re-enter your new password'),
      ],
    );
  }

  Widget _buildPasswordField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 43, 1),
            fontFamily: 'SF Pro Rounded',
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(254, 254, 254, 1),
            border: Border.all(color: Color.fromRGBO(162, 162, 208, 1), width: 1),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Text(
            hint,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(73, 73, 141, 1),
              fontFamily: 'SF Pro Rounded',
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildChangePasswordButton() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(83, 100, 147, 1),
        border: Border.all(color: Color.fromRGBO(162, 162, 208, 1), width: 2),
      ),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Text(
          'Change Password',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontFamily: 'SF Pro Rounded',
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
