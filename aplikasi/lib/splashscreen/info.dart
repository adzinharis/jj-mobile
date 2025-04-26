import 'package:flutter/material.dart';
import 'fitur1.dart';
import 'fitur2.dart';
import 'fitur3.dart';
class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0; // buat indikator aktif

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  _buildPageContent(
                    image: 'images/image-for-logo/logo.png',
                    title: 'Selamat Datang di\nAplikasi JJ Mobile',
                    subtitle: 'Platform belanja jenang jagung dari\nUMKM lokal. Enak, mudah, dan praktis.',
                  ),
                  const Fitur1Page(), // halaman kedua
                  const Fitur2Page(),
                  const Fitur3Page(),
                  // kalau mau tambah halaman lagi, tambahkan di sini
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildIndicator(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildPageContent({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 150,
            height: 150,
          ),
          const SizedBox(height: 60),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4CAF50),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4, // jumlah halaman di PageView
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: _currentPage == index ? 43 : 20,
          height: 5,
          decoration: BoxDecoration(
            color: _currentPage == index ? const Color(0xFF4CAF50) : Colors.grey[300],
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
