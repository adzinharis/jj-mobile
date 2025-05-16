import 'package:flutter/material.dart';

class Fitur2Page extends StatelessWidget {
  const Fitur2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(flex: 2),
          Center(
            child: Image.asset(
              'assets/images/fitur2.png',
              width: 200, // sama kayak fitur1
            ),
          ),
          const SizedBox(height: 60),
          const Text(
            'Tukar Point dengan Diskon',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4CAF50),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Belanja, kumpulkan JKoin, dan nikmati diskon jenang jagung!',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          const Spacer(flex: 2),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
