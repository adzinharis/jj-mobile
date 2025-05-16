import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart'; 
import 'info.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool _showLogo = false;
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _playSplashSound();
    _startSplashSequence();
  }

  // Fungsi untuk memainkan backsound splash
  void _playSplashSound() async {
    await _audioPlayer.setVolume(1.0);
    await _audioPlayer.play(AssetSource('sounds/sound.mp3'));
  }

  // Fungsi untuk menampilkan logo dan navigasi
  void _startSplashSequence() async {
    await Future.delayed(const Duration(seconds: 4));
    if (!mounted) return;

    setState(() {
      _showLogo = true;
    });

    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const InfoPage()),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
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
                      'assets/images/logo.png',
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
