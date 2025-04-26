import 'package:flutter/material.dart';

class Feature3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.wallet, size: 100, color: Colors.green),
            SizedBox(height: 30),
            Text(
              "Transaksi Praktis",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Mudah untuk pembelian yang cepat & aman.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
