import 'package:flutter/material.dart';
import 'dart:async';
import 'package:versatile_app/screens/loginscreen.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  _SplashScreenWidgetState createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _logoAnimation;
  late Animation<Offset> _titleAnimation;
  late Animation<Offset> _subtitleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..forward();

    // Animasi untuk logo
    _logoAnimation = Tween<Offset>(
      begin: const Offset(0.0, -1.5), // Dari atas
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Animasi untuk teks 'Organize Your Cupboard'
    _titleAnimation = Tween<Offset>(
      begin: const Offset(-1.5, 0.0), // Dari kiri
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Animasi untuk teks 'Versatile.'
    _subtitleAnimation = Tween<Offset>(
      begin: const Offset(1.5, 0.0), // Dari kanan
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Navigasi ke halaman berikutnya setelah 5 detik
    Timer(const Duration(seconds: 5), () {
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
      backgroundColor: const Color.fromRGBO(254, 254, 254, 1),
      body: Stack(
        children: <Widget>[
          // Elemen dekorasi latar belakang
          Positioned(
            top: 142,
            left: -161,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(126, 96, 191, 0.6),
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
                color: const Color.fromRGBO(83, 100, 147, 0.6),
                borderRadius: BorderRadius.circular(150),
              ),
            ),
          ),

          // Logo dengan animasi SlideTransition dari atas ke tengah
          SlideTransition(
            position: _logoAnimation,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 268.88,
                    height: 165,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo2.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Teks 'Organize Your Cupboard' dengan animasi dari kiri
                  SlideTransition(
                    position: _titleAnimation,
                    child: const Text(
                      'Organize Your Cupboard',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF Pro Rounded',
                        fontSize: 21,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Teks 'Versatile.' dengan animasi dari kanan
                  SlideTransition(
                    position: _subtitleAnimation,
                    child: const Text(
                      'Versatile.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF Pro Rounded',
                        fontSize: 27.5,
                        height: 1.2,
                      ),
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
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Next Screen"),
      ),
    );
  }
}
