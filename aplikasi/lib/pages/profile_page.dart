import 'package:flutter/material.dart';
import 'about_us.dart';
import 'setting_page.dart';
import 'my_order.dart';
import 'package:aplikasi/login/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),

            // Foto Profil
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/pp.png'),
                ),
                Positioned(
                  bottom: 0,
                  right: 4,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.camera_alt, size: 18),
                  ),
                )
              ],
            ),

            const SizedBox(height: 12),
            const Text(
              'Kartika Putri',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'kartikaputri@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 10),

            

            const SizedBox(height: 30),

            // Menu navigasi dengan ikon dari aset lokal
            buildMenuItem(
              context,
              'assets/icons/setting.png',
              'Pengaturan',
              const SettingPage(),
            ),
            buildMenuItem(
              context,
              'assets/icons/order.png',
              'Pesanan Saya',
              const PesananPage(),
            ),
            buildMenuItem(
              context,
              'assets/icons/info.png',
              'Tentang Kami',
              const AboutUsPage(),
            ),
            buildMenuItem(
              context,
              'assets/icons/logout.png',
              'Keluar',
              const LoginPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
    BuildContext context,
    String iconAsset, // Gunakan path aset lokal
    String title,
    Widget page,
  ) {
    return ListTile(
      leading: Image.asset(
        iconAsset,
        width: 24,
        height: 24,
      ),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
