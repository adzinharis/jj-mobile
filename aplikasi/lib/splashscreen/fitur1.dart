import 'package:flutter/material.dart';
import 'fitur2.dart';

class Feature1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.chat_bubble_outline, size: 100, color: Colors.green),
                SizedBox(height: 30),
                Text(
                  "Tetap Terhubung,\nKapan Saja",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
                ),
                SizedBox(height: 10),
                Text(
                  "Kapan saja dan dimana saja, semua terkoneksi.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Feature2Screen()));
              },
              child: Icon(Icons.arrow_forward),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(16),
                backgroundColor: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
