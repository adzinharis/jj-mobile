import 'package:flutter/material.dart';

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({super.key});

  final List<Map<String, String>> notifikasiList = const [
    {
      'pesan': 'Halo Kak! Pesanan kamu telah berhasil dibuat.',
      'tanggal': '5-04-2025 | 12.00',
    },
    {
      'pesan': 'Halo Kak! Pesanan kamu sudah dikemas dan akan segera dikirim.',
      'tanggal': '10-04-2025',
    },
    {
      'pesan':
          'Halo Kak! Pesanan kamu sedang dalam pengiriman. Mohon menyediakan uang tunai sebesar yang telah dipesan. Terima kasih ya! 🙏',
      'tanggal': '12-04-2025',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/back.png', 
            width: 20,
            height: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Notifikasi',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      // Daftar Notifikasi
      body: ListView.builder(
        itemCount: notifikasiList.length,
        itemBuilder: (context, index) {
          final item = notifikasiList[index];
          return Container(
            color: index % 2 == 0 ? Colors.grey[100] : Colors.grey[200],
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['pesan'] ?? '',
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  item['tanggal'] ?? '',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
