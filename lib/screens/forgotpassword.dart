import 'package:flutter/material.dart';

class ForgotpasswordWidget extends StatefulWidget {
  @override
  _ForgotpasswordWidgetState createState() => _ForgotpasswordWidgetState();
}

class _ForgotpasswordWidgetState extends State<ForgotpasswordWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ForgotpasswordWidget - FRAME
    return Container(
      width: 393,
      height: 852,
      decoration: BoxDecoration(
        color: Color.fromRGBO(254, 254, 254, 1),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 206,
            left: 44,
            child: Text(
              'Forgot Password?',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 43, 1),
                fontFamily: 'SF Pro Rounded',
                fontSize: 40,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 0.84,
              ),
            ),
          ),
          Positioned(
            top: 424,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Enter your phone number and wait for the verification code to be sent.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 43, 1),
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Phone number',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 43, 1),
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(
                        color: Color.fromRGBO(162, 162, 208, 1),
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Text(
                      'Enter your phone number',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(73, 73, 141, 1),
                        fontFamily: 'SF Pro Rounded',
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 773,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(83, 100, 147, 1),
                  border: Border.all(
                    color: Color.fromRGBO(162, 162, 208, 1),
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                child: Text(
                  'Send',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'SF Pro Rounded',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 54,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 64),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(),
                  ),
                  SizedBox(width: 64),
                  Text(
                    'Verification',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 43, 1),
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
