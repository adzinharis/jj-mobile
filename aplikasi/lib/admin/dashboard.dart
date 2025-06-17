import 'package:flutter/material.dart';
import 'product.dart';
import 'order.dart';
import 'chat.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins'
                ),
              ),
              SizedBox(height: 30),
              DashboardMenuItem(
            icon: Icons.dashboard_customize_rounded,
            title: 'Produk',
            onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProdukPage()),
            );
            },
            ),

              DashboardMenuItem(
                icon: Icons.receipt_long_rounded,
                title: 'Pesanan',
                onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PesananPage()),
            );
            },
              ),
              DashboardMenuItem(
                icon: Icons.chat_bubble_outline,
                title: 'Chat',
                onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatPage()),
            );
            },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const DashboardMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, 
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: Row(
          children: [
            Icon(icon, size: 20),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}

