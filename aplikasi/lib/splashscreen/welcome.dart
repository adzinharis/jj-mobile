import 'dart:async';
import 'package:flutter/material.dart';
import 'info.dart'; 

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _showLogo = false;

  @override
  void initState() {
    super.initState();
    // Tampilkan logo setelah 2 detik
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _showLogo = true;
      });

      // Setelah 2 detik lagi, pindah ke InfoScreen
      Timer(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => InfoPage()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _showLogo
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/image-for-Logo/logo.png',
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(height: 20),
                ],
              )
            : const Text(
                'Selamat Datang',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
      ),
    );
  }
}
