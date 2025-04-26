import 'package:flutter/material.dart';

class Fitur1Page extends StatelessWidget {
  const Fitur1Page({Key? key}) : super(key: key);

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
              'images/image-for-fitur1/fitur1.png',
              width: 200, // konsisten
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            'Tetap Terhubung,\nKapan Saja',
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
            'Tanya stok, diskusi pesanan, semua\nlewat satu fitur',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          const Spacer(flex: 3),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
