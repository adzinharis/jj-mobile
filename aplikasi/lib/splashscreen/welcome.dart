import 'package:flutter/material.dart';
import 'info.dart'; 

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _showLogo = false;

  @override
  void initState() {
    super.initState();
    // Tampil teks selama 2 detik
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _showLogo = true;
      });

      // Setelah logo muncul, delay lagi 2 detik, lalu pindah ke InfoPage
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const InfoPage()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 800),
          child: _showLogo
              ? Column(
                  key: const ValueKey('logo'),
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/image-for-logo/logo.png', // Pastikan logo tersedia di assets
                      width: 150,
                      height: 150,
                    ),
                    const SizedBox(height: 10),
                   
                  ],
                )
              : Text(
                  'Selamat Datang',
                  key: const ValueKey('text'),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.green[700],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
