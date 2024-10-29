import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationWidget extends StatefulWidget {
  @override
  _RegistrationWidgetState createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator RegistrationWidget - FRAME

    return Container(
      width: 393,
      height: 852,
      decoration: BoxDecoration(
        color: Color.fromRGBO(254, 254, 254, 1),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 112,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Full Name Field
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Full name',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 43, 1),
                            fontFamily: 'SF Pro Rounded',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(254, 254, 254, 1),
                            border: Border.all(
                              color: Color.fromRGBO(162, 162, 208, 1),
                              width: 1,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Text(
                            'Enter your fullname',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(73, 73, 141, 1),
                              fontFamily: 'SF Pro Rounded',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Username Field
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Username',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 43, 1),
                            fontFamily: 'SF Pro Rounded',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(254, 254, 254, 1),
                            border: Border.all(
                              color: Color.fromRGBO(162, 162, 208, 1),
                              width: 1,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Text(
                            'Create your username',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(73, 73, 141, 1),
                              fontFamily: 'SF Pro Rounded',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Password Field
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Password',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 43, 1),
                            fontFamily: 'SF Pro Rounded',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(254, 254, 254, 1),
                            border: Border.all(
                              color: Color.fromRGBO(162, 162, 208, 1),
                              width: 1,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Text(
                            '********',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(73, 73, 141, 1),
                              fontFamily: 'SF Pro Rounded',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                          child: Text(
                            'Create a minimum of 8 characters and use a combination of uppercase letters, lowercase letters, numbers, and symbols. Example: UtyH3b4t#',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(43, 2, 0, 1),
                              fontFamily: 'SF Pro Rounded',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Confirm Password Field
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Confirm Password',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 43, 1),
                            fontFamily: 'SF Pro Rounded',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(254, 254, 254, 1),
                            border: Border.all(
                              color: Color.fromRGBO(162, 162, 208, 1),
                              width: 1,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Text(
                            '********',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(73, 73, 141, 1),
                              fontFamily: 'SF Pro Rounded',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // Phone Number Field
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Phone number',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 43, 1),
                            fontFamily: 'SF Pro Rounded',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(254, 254, 254, 1),
                            border: Border.all(
                              color: Color.fromRGBO(162, 162, 208, 1),
                              width: 1,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '+62',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(83, 100, 147, 1),
                                  fontFamily: 'Quicksand',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '8765890876',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromRGBO(73, 73, 141, 1),
                                  fontFamily: 'Quicksand',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 54,
            left: 0,
            child: Container(
              width: 393,
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 43, 1),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Add your navigation logic here
                    },
                    child: SvgPicture.asset(
                      'assets/icons/back.svg',
                      semanticsLabel: 'Back Icon',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Registration',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 772,
            left: 0,
            child: Container(
              width: 393,
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(0, 0, 43, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Add your registration logic here
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'SF Pro Rounded',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
