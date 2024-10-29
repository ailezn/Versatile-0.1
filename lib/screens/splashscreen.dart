import 'package:flutter/material.dart';
import 'dart:async';

import 'package:versatile_app/screens/loginscreen.dart';

class SplashScreenWidget extends StatefulWidget {
  @override
  _SplashScreenWidgetState createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();

    _offsetAnimation = Tween<Offset>(
      begin: Offset(-1.5, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Navigate to next screen after animation
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(254, 254, 254, 1),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 142,
            left: -161,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromRGBO(126, 96, 191, 0.6),
                borderRadius: BorderRadius.circular(150),
              ),
            ),
          ),
          Positioned(
            top: 518,
            left: 197,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromRGBO(83, 100, 147, 0.6),
                borderRadius: BorderRadius.circular(150),
              ),
            ),
          ),
          SlideTransition(
            position: _offsetAnimation,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 268.88,
                    height: 165,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo2.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Organize Your Cupboard',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 21,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Versatile.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 27.5,
                      height: 1.2,
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

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Next Screen"),
      ),
    );
  }
}
