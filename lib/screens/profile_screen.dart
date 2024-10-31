import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'package:versatile_app/screens/loginscreen.dart';
import 'package:versatile_app/screens/editprofile.dart'; 
import 'package:versatile_app/screens/changepassword.dart'; 

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 254, 254, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Color.fromRGBO(73, 73, 141, 1),
            fontFamily: 'SF Pro Rounded',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 48,
              backgroundColor: Color.fromRGBO(73, 73, 141, 1),
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            SizedBox(height: 12),
            Text(
              'Viera Vaziera',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 43, 1),
                fontFamily: 'SF Pro Rounded',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '@vieravaz',
              style: TextStyle(
                color: Color.fromRGBO(73, 73, 141, 1),
                fontFamily: 'SF Pro Rounded',
                fontSize: 16,
              ),
            ),
            SizedBox(height: 32),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Account settings',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 43, 1),
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(SFSymbols.pencil, color: Color.fromRGBO(0, 0, 43, 1)),
              title: Text(
                'Edit profile',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 43, 1),
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 16,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Color.fromRGBO(162, 162, 208, 1), size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfileWidget()),
                );
              },
            ),
            ListTile(
              leading: Icon(SFSymbols.lock, color: Color.fromRGBO(0, 0, 43, 1)),
              title: Text(
                'Change password',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 43, 1),
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 16,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Color.fromRGBO(162, 162, 208, 1), size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePasswordWidget()),
                );
              },
            ),
            SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(SFSymbols.arrow_left_square, color: Color.fromRGBO(73, 73, 141, 1)),
                  SizedBox(width: 8),
                  Text(
                    'Log out',
                    style: TextStyle(
                      color: Color.fromRGBO(73, 73, 141, 1),
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
