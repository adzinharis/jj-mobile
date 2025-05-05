import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart'; // Import audioplayers baru
import 'info.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _showLogo = false;
  final AudioPlayer _audioPlayer = AudioPlayer(); // Instance AudioPlayer

  @override
  void initState() {
    super.initState();
    _playSplashSound(); // Play sound saat load
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        _showLogo = true;
      });

      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const InfoPage()),
        );
      });
    });
  }

  // Fungsi play audio splash
  void _playSplashSound() async {
     await _audioPlayer.setVolume(1.0); // Set volume ke maksimal
    await _audioPlayer.play(AssetSource('sounds/backsound_arbiv.mp3'));
  }

  @override
  void dispose() {
    _audioPlayer.dispose(); // Pastikan dispose player
    super.dispose();
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
                      'images/image-for-logo/logo.png',
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
