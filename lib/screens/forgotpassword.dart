import 'package:flutter/material.dart';
import 'package:flutter_sfsymbols/flutter_sfsymbols.dart';
import 'loginscreen.dart'; // pastikan jalur file loginscreen.dart sudah benar

class ForgotpasswordWidget extends StatefulWidget {
  const ForgotpasswordWidget({super.key});

  @override
  _ForgotpasswordWidgetState createState() => _ForgotpasswordWidgetState();
}

class _ForgotpasswordWidgetState extends State<ForgotpasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 254, 254, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(254, 254, 254, 1),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(SFSymbols.chevron_left, color: Color(0xFF7E60BF), size: 28),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
        ),
        title: const Text(
          'Forgot Password',
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 43, 1),
            fontFamily: 'SF Pro Rounded',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Memastikan konten berada di tengah
            children: <Widget>[
              const SizedBox(height: 40),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Color(0xFF536493), Color(0xFF7E60BF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds),
                child: const Icon(
                  SFSymbols.exclamationmark_bubble,
                  size: 160,
                  color: Colors.white, // Color diatur menjadi putih agar mengikuti gradasi
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 43, 1),
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Enter your phone number and wait for the verification code to be sent.',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 43, 1),
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 16,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 43, 1),
                    fontFamily: 'SF Pro Rounded',
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(162, 162, 208, 1),
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(73, 73, 141, 1),
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 14,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 160), // Memberi jarak sebelum tombol
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
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
                  onPressed: () {
                    // Implementasi aksi kirim ntar disini
                  },
                  child: const Text(
                    'Send',
                    style: TextStyle(
                      color: Color.fromRGBO(254, 254, 254, 1),
                      fontFamily: 'SF Pro Rounded',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
