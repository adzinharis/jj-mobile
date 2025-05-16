import 'package:flutter/material.dart';
import 'notification.dart';
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header Selamat Datang
              Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                  color: Color(0xFF20A110),

                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pp.png'),
                      radius: 25,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Halo, Kartika Putri!",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 14)),
                          Text(
                            "Selamat Datang!",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "45 JKoin",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                   GestureDetector(
                  onTap: () {
                Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => NotifikasiPage()),
          );
        },
      child: Image.asset(
    'assets/icons/notification.png',
    width: 24,
    height: 24,
    color: Colors.white,
  ),
)


                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Gambar Produk Scroll Horizontal
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    buildProductImage('assets/images/pict-1.png'),
                    buildProductImage('assets/images/pict-2.png'),
                    buildProductImage('assets/images/pict-3.png'),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Diskon Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    DiscountCard(image: 'assets/images/susu-jj.png', discount: '5%'),
                    DiscountCard(image: 'assets/images/jj3.png', discount: '10%'),
                    DiscountCard(image: 'assets/images/jj4.png', discount: '15%'),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Daftar Sekarang
              PromoCard(
                text1: 'Ayo Jadi Bagian Dari Kami',
                text2: 'Daftar Sekarang!',
                image: 'assets/images/admin.png',
              ),

              const SizedBox(height: 10),

              PromoCard(
                text1: 'Join, Jual, Cuan Bersama',
                text2: 'Reseller Dibuka!',
                image: 'assets/images/reseller.png',
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // Widget builder untuk gambar horizontal
  Widget buildProductImage(String assetPath) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// Widget untuk kartu diskon
class DiscountCard extends StatelessWidget {
  final String image;
  final String discount;

  const DiscountCard({
    required this.image,
    required this.discount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF20A110),

        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        clipBehavior: Clip.none, // Agar gambar bisa keluar dari batas
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // Menjaga agar teks berada di tengah
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30), // Menambahkan jarak untuk gambar mengambang
              Center(
                child: const Text("Diskon",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white)),
              ),
              Center(
                child: Text(discount,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Positioned(
            top: -25, // Posisi gambar mengambang ke atas
            left: 15, // Posisi gambar mengambang ke kiri
            child: Image.asset(image, width: 50, height: 50),
          ),
        ],
      ),
    );
  }
}

// Widget untuk kartu promosi bawah
class PromoCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String image;

  const PromoCard({
    required this.text1,
    required this.text2,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.asset(image, width: 50, height: 50),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1,
                    style:
                        const TextStyle(fontSize: 14, color: Colors.black87)),
                Text(
                  text2,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
